.class public Lcloudsdk/ext/kr/RootInitConfig;
.super Lcloudsdk/SdkConfig;
.source "SourceFile"


# instance fields
.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcloudsdk/SdkConfig;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->M:Z

    .line 23
    iput v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->O:I

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getKdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getKinguserBuildNo()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->O:I

    return v0
.end method

.method public getKinguserSdkCleanListPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->N:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcloudsdk/ext/kr/RootInitConfig;->K:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setKdPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcloudsdk/ext/kr/RootInitConfig;->L:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setKinguserBuildNo(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcloudsdk/ext/kr/RootInitConfig;->O:I

    .line 67
    return-void
.end method

.method public setKinguserSdkCleanListPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcloudsdk/ext/kr/RootInitConfig;->N:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setWillKinguserSdkCleanApp(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcloudsdk/ext/kr/RootInitConfig;->M:Z

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcloudsdk/SdkConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "channel = %s, kdPath = %s, willKinguserSdkCleanApp = %s, kinguserSdkCleanListPath = %s, kuBuildNo = %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcloudsdk/ext/kr/RootInitConfig;->K:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcloudsdk/ext/kr/RootInitConfig;->L:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcloudsdk/ext/kr/RootInitConfig;->M:Z

    .line 30
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcloudsdk/ext/kr/RootInitConfig;->N:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcloudsdk/ext/kr/RootInitConfig;->O:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 27
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willKinguserSdkCleanApp()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcloudsdk/ext/kr/RootInitConfig;->M:Z

    return v0
.end method
