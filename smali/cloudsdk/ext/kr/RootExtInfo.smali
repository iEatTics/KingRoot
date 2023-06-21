.class public Lcloudsdk/ext/kr/RootExtInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canRoot:I

.field public subitUsers:J

.field public succRate:I

.field public succUsers:I

.field public useTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    .line 22
    iput v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    .line 27
    iput v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    .line 32
    iput v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcloudsdk/ext/kr/RootExtInfo;->subitUsers:J

    .line 40
    return-void
.end method

.method public static valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcloudsdk/ext/kr/RootExtInfo;

    invoke-direct {v0}, Lcloudsdk/ext/kr/RootExtInfo;-><init>()V

    .line 49
    const-string v1, "canRoot"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    .line 50
    const-string v1, "useTime"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    .line 51
    const-string v1, "succUsers"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    .line 52
    const-string v1, "succRate"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    .line 53
    const-string v1, "subitUsers"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcloudsdk/ext/kr/RootExtInfo;->subitUsers:J

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v1, "canRoot"

    iget v2, p0, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v1, "useTime"

    iget v2, p0, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v1, "succUsers"

    iget v2, p0, Lcloudsdk/ext/kr/RootExtInfo;->succUsers:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v1, "succRate"

    iget v2, p0, Lcloudsdk/ext/kr/RootExtInfo;->succRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v1, "subitUsers"

    iget-wide v2, p0, Lcloudsdk/ext/kr/RootExtInfo;->subitUsers:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 64
    return-object v0
.end method
