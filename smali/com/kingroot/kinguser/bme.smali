.class public final Lcom/kingroot/kinguser/bme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bAL:J

.field public bBq:I

.field public bBr:I

.field public bBs:I

.field public bBt:Ljava/lang/String;

.field public bBu:Ljava/lang/String;

.field private bBv:I

.field public packageName:Ljava/lang/String;

.field public versionCode:I

.field public vv:Ljava/lang/String;

.field public vw:Ljava/lang/String;

.field public xu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bme;->bBv:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bme;->bAL:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 83
    const-string v0, "mMkey = %d, mVersionCode = %d, mBuildHostId = %d, mBuildHostVersion = %d, mEntryClass = %s, mPackageMd5 = %s, mApkPath = %s, mDexOptimizedDirectory = %s, mLibraryPath = %s, mDataPath = %s, mInstallState = %d"

    .line 85
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/kingroot/kinguser/bme;->bBq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingroot/kinguser/bme;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/kingroot/kinguser/bme;->bBr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/kingroot/kinguser/bme;->bBs:I

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->bBt:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->xu:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->vv:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 85
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
