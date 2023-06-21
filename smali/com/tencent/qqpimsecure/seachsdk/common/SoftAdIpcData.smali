.class public Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;
.super Lcom/tencent/qqpimsecure/seachsdk/common/AdIpcData;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bMd:I

.field public bOP:I

.field public bOQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public bOR:Ljava/lang/String;

.field public bOS:Ljava/lang/String;

.field public bOT:Ljava/lang/String;

.field public bOU:Ljava/lang/String;

.field public bOV:Ljava/lang/String;

.field public gF:I

.field public priority:I

.field public searchKeyWord:Ljava/lang/String;

.field public softName:Ljava/lang/String;

.field public tagId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData$1;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData$1;-><init>()V

    .line 75
    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/seachsdk/common/AdIpcData;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/common/AdIpcData;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bMd:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->priority:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->gF:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOP:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOQ:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOR:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOS:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOT:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOU:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOV:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->softName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->tagId:J

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->searchKeyWord:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/seachsdk/common/AdIpcData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bMd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->gF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOQ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->bOV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->softName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->tagId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftAdIpcData;->searchKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
