.class public final Lcloudsdk/ext/kr/RootDao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/RootConst;


# static fields
.field private static x:Lcloudsdk/ext/kr/RootDao;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private mContext:Landroid/content/Context;

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    .line 24
    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->z:I

    .line 27
    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    .line 30
    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcloudsdk/ext/kr/RootDao;->C:Z

    .line 36
    iput-object p1, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcloudsdk/ext/kr/RootDao;->x:Lcloudsdk/ext/kr/RootDao;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcloudsdk/ext/kr/RootDao;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcloudsdk/ext/kr/RootDao;->x:Lcloudsdk/ext/kr/RootDao;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcloudsdk/ext/kr/RootDao;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcloudsdk/ext/kr/RootDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcloudsdk/ext/kr/RootDao;->x:Lcloudsdk/ext/kr/RootDao;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcloudsdk/ext/kr/RootDao;->x:Lcloudsdk/ext/kr/RootDao;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getCurrProgress()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 111
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    if-ne v0, v3, :cond_0

    .line 112
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    const-string v1, "curr_progress"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    .line 115
    :cond_0
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    return v0
.end method

.method public final getCurrStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string v1, "curr_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    .line 56
    :cond_0
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    return v0
.end method

.method public final getPrevStatus()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->z:I

    return v0
.end method

.method public final getSolutionIndex()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 68
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    if-ne v0, v3, :cond_0

    .line 69
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    const-string v1, "curr_solution_index"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    .line 72
    :cond_0
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    return v0
.end method

.method public final getToSettingNetwork()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcloudsdk/ext/kr/RootDao;->C:Z

    return v0
.end method

.method public final setCurrProgress(I)V
    .locals 3

    .prologue
    .line 103
    iput p1, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    .line 104
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    const-string v1, "curr_progress"

    iget v2, p0, Lcloudsdk/ext/kr/RootDao;->B:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public final setCurrStatus(I)V
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    if-eq v0, p1, :cond_0

    .line 91
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->z:I

    .line 93
    :cond_0
    iput p1, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    .line 95
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    const-string v1, "curr_status"

    iget v2, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method public final setCurrStatus(II)V
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    if-eq v0, p1, :cond_0

    .line 77
    iget v0, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    iput v0, p0, Lcloudsdk/ext/kr/RootDao;->z:I

    .line 79
    :cond_0
    iput p1, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    .line 81
    iput p2, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    .line 82
    iget-object v0, p0, Lcloudsdk/ext/kr/RootDao;->mContext:Landroid/content/Context;

    const-string v1, "krsdkv2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    const-string v1, "curr_status"

    iget v2, p0, Lcloudsdk/ext/kr/RootDao;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v1, "curr_solution_index"

    iget v2, p0, Lcloudsdk/ext/kr/RootDao;->A:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public final setToSettingNetwork(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcloudsdk/ext/kr/RootDao;->C:Z

    .line 120
    return-void
.end method
