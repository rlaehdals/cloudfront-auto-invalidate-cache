exports.handler = async (event, context) => {
  try {
    const s3BucketName = event.Records[0].s3.bucket.name;
    const s3ObjectKey = event.Records[0].s3.object.key;
    const AWS = require('aws-sdk');
    const cloudfront = new AWS.CloudFront();
    const distributions = await cloudfront.listDistributions().promise();
    const distribution = distributions.DistributionList.Items.find(item => {
      const origins = item.Origins.Items;
      return origins.some(origin => origin.DomainName.includes(s3BucketName));
    });
     if (distribution) {
      const distributionId = distribution.Id;
      const invalidationParams = {
        DistributionId: distributionId,
        InvalidationBatch: {
          CallerReference: Date.now().toString(),
          Paths: {
            Quantity: 1,
            Items: ['/' + s3ObjectKey]
          }
        }
      };
      const invalidationResult = await cloudfront.createInvalidation(invalidationParams).promise();
      console.log('CloudFront Invalidation ID:', invalidationResult.Invalidation.Id);
      return {
        statusCode: 200,
        body: 'CloudFront cache invalidation initiated for object: ' + s3ObjectKey
      };
    } else {
      return {
        statusCode: 404,
        body: 'CloudFront Distribution not found for the specified S3 bucket'
      };
    }
  } catch (error) {
    console.error('Error:', error);
    return {
      statusCode: 500,
      body: 'Error retrieving CloudFront Distribution ID or initiating cache invalidation: ' + error.message
    };
  }
};