.class public Lcom/kingroot/kinguser/model/SuRequestCmdModel;
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
            "Lcom/kingroot/kinguser/model/SuRequestCmdModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aRm:I

.field public aRn:I

.field public aRo:Ljava/lang/String;

.field public aRp:Ljava/lang/String;

.field public aRq:I

.field public aRr:I

.field public aRs:Landroid/net/LocalSocket;

.field public aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

.field public aRu:Ljava/lang/String;

.field public aRv:J

.field public aRw:J

.field public aRx:J

.field public adZ:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mCreateTime:J

.field public riskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/SuRequestCmdModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    .line 35
    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRt:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mCreateTime:J

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    .line 48
    iput-wide v2, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    .line 53
    iput-wide v2, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    .line 58
    iput-wide v2, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mCreateTime:J

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRs:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRn:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRq:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mCreateTime:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->adZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->riskType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRw:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-wide v0, p0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    return-void
.end method
