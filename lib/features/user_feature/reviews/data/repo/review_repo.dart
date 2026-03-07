import 'package:car_app_new/core/common/model/car_review_model.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/user_feature/reviews/data/data_source/reviews_data_source.dart';
import 'package:car_app_new/features/user_feature/reviews/data/model/review_reesponse_model.dart';

class ReviewRepo {
  ReviewRepo({required this.dataSource});

  final RemoteReviewsDataSource dataSource;
  Future<ApiResult<ReviewResponseModel>> confirmCode({
    required ReviewModel reviewModel,
  }) async {
    try {
      final response = await dataSource.addReview(
        reviewModel,
      );
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(
        'Failed to add review',
      );
    }
  }
}
