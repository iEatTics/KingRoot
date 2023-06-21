.class public Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
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
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aGK:Ljava/lang/String;

.field private aGL:Ljava/lang/String;

.field private aGM:Lcom/kingroot/kinguser/boq;

.field private aGN:J

.field private aGO:I

.field private aGP:Ljava/lang/String;

.field private aGQ:Ljava/lang/String;

.field private aGR:Z

.field private aGS:J

.field private aGT:I

.field private aGU:J

.field private aGV:I

.field private aGW:J

.field private adZ:Ljava/lang/String;

.field private anc:Ljava/lang/String;

.field private ra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bom;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    .line 51
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->anc:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGK:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGQ:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->agI()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGT:I

    .line 56
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->agH()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGS:J

    .line 57
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGN:J

    .line 58
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->isCompleted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGR:Z

    .line 59
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGM:Lcom/kingroot/kinguser/boq;

    .line 60
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KK()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGP:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KL()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGO:I

    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGL:Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KF()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGU:J

    .line 67
    invoke-static {p3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->adZ:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KN()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    .line 70
    if-eqz p4, :cond_1

    .line 71
    iget-wide v0, p4, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    .line 73
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGT:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGS:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/boq;)Lcom/kingroot/kinguser/boq;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGM:Lcom/kingroot/kinguser/boq;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGO:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGN:J

    return-wide p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->anc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGR:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGU:J

    return-wide p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    return-wide p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGQ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->adZ:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public KF()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGU:J

    return-wide v0
.end method

.method public KG()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGN:J

    return-wide v0
.end method

.method public KH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGK:Ljava/lang/String;

    return-object v0
.end method

.method public KI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGQ:Ljava/lang/String;

    return-object v0
.end method

.method public KJ()Lcom/kingroot/kinguser/boq;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGM:Lcom/kingroot/kinguser/boq;

    return-object v0
.end method

.method public KK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGP:Ljava/lang/String;

    return-object v0
.end method

.method public KL()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGO:I

    return v0
.end method

.method public KM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->adZ:Ljava/lang/String;

    return-object v0
.end method

.method public KN()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    return v0
.end method

.method public KO()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    return-wide v0
.end method

.method public a(Lcom/kingroot/kinguser/boq;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGM:Lcom/kingroot/kinguser/boq;

    .line 157
    return-void
.end method

.method public bR(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGU:J

    .line 77
    return-void
.end method

.method public bS(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGN:J

    .line 89
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGL:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    return-object v0
.end method

.method public hT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGK:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public hU(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGL:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public hV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGQ:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public hW(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGP:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPercentage(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGO:I

    .line 173
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->anc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->ra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGN:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGM:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGU:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->adZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->aGW:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
