.class public Lcloudsdk/SdkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcloudsdk/SdkConfig;->g:Z

    .line 19
    iput-boolean v0, p0, Lcloudsdk/SdkConfig;->h:Z

    return-void
.end method


# virtual methods
.method public getWorkingDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcloudsdk/SdkConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isLogSwitchOn()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcloudsdk/SdkConfig;->h:Z

    return v0
.end method

.method public isUseTestServer()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcloudsdk/SdkConfig;->g:Z

    return v0
.end method

.method public setLogSwitchOn(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcloudsdk/SdkConfig;->h:Z

    .line 50
    return-void
.end method

.method public setUseTestServer(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcloudsdk/SdkConfig;->g:Z

    .line 42
    return-void
.end method

.method public setWorkingDir(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcloudsdk/SdkConfig;->i:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "useTestServer = %s, logSwitchOn = %s, workingDir = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcloudsdk/SdkConfig;->g:Z

    .line 28
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcloudsdk/SdkConfig;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcloudsdk/SdkConfig;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 26
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
