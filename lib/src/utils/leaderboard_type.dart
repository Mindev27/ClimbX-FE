enum LeaderboardType {
  rating('레이팅'),
  contribution('기여'),
  solvedProblems('푼 문제 수');

  const LeaderboardType(this.label);
  
  final String label;
} 