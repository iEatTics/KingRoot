.class public Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BH:F

.field public KS:Z

.field public KT:Ljava/lang/String;

.field public KU:J

.field public mErrorCode:I

.field public mName:Ljava/lang/String;

.field public mSize:J

.field public mSpeed:I

.field public mState:I

.field public mType:I

.field public ra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$1;

    invoke-direct {v0}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    .line 120
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    .line 123
    invoke-virtual {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/vj;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget v0, p1, Lcom/kingroot/kinguser/vj;->mType:I

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mType:I

    .line 73
    iget-object v0, p1, Lcom/kingroot/kinguser/vj;->ra:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->ra:Ljava/lang/String;

    .line 74
    iget-boolean v0, p1, Lcom/kingroot/kinguser/vj;->KS:Z

    iput-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    .line 75
    iget v0, p1, Lcom/kingroot/kinguser/vj;->mState:I

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    .line 76
    iget-object v0, p1, Lcom/kingroot/kinguser/vj;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mName:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/kingroot/kinguser/vj;->KT:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KT:Ljava/lang/String;

    .line 78
    iget-wide v0, p1, Lcom/kingroot/kinguser/vj;->mSize:J

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    .line 79
    iget-wide v0, p1, Lcom/kingroot/kinguser/vj;->KU:J

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KU:J

    .line 80
    iget v0, p1, Lcom/kingroot/kinguser/vj;->BH:F

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->BH:F

    .line 81
    iget v0, p1, Lcom/kingroot/kinguser/vj;->mSpeed:I

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSpeed:I

    .line 82
    iget v0, p1, Lcom/kingroot/kinguser/vj;->mErrorCode:I

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->ra:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KT:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KU:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->BH:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSpeed:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    .line 140
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->ra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->KU:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->BH:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    iget v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
