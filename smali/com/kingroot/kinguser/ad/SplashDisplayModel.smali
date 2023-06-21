.class public Lcom/kingroot/kinguser/ad/SplashDisplayModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/ad/SplashDisplayModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ajt:Ljava/lang/String;

.field public aju:I

.field public ajv:I

.field public ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

.field public gt:J

.field public jumpUrl:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public priority:I

.field public showDuration:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ad/SplashDisplayModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 28
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 29
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    .line 31
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 67
    const-class v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 28
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 29
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    .line 31
    iput v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 48
    iget-object v0, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 51
    iget-object v0, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJC:I

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afz;->fm(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 55
    return-void
.end method

.method public constructor <init>(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v4, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 27
    iput v4, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 28
    iput v4, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 29
    iput v4, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    .line 31
    iput v4, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    .line 36
    const/4 v1, 0x2

    iput v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    .line 37
    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->priority:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    .line 39
    iget-object v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->clickJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afz;->fm(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    .line 42
    iget-wide v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    .line 43
    iget v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 44
    iget v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->showDuration:I

    iput v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 84
    check-cast p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->jumpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->showDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-wide v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
