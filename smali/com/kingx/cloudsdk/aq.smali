.class public final Lcom/kingx/cloudsdk/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingx/cloudsdk/aq$a;
    }
.end annotation


# instance fields
.field public aH:I

.field public aM:Ljava/lang/String;

.field public bAI:I

.field public bAJ:Ljava/lang/String;

.field public bAK:J

.field public bAL:J

.field public bAM:I

.field public bZ:I

.field public bj:Z

.field public size:I

.field public versionCode:I

.field public xA:Ljava/lang/String;

.field public xD:I

.field public xu:Ljava/lang/String;

.field public xv:Ljava/lang/String;

.field public xy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/kingx/cloudsdk/aq$1;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/aq$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    .line 24
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->aM:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->size:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->bZ:I

    .line 80
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->xD:I

    .line 83
    iput-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAK:J

    .line 86
    iput-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    .line 89
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->bAM:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/aq;->bj:Z

    .line 98
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    .line 24
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->aM:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->size:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->bAI:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/kingx/cloudsdk/aq;->bZ:I

    .line 80
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->xD:I

    .line 83
    iput-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAK:J

    .line 86
    iput-wide v4, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    .line 89
    iput v1, p0, Lcom/kingx/cloudsdk/aq;->bAM:I

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/aq;->bj:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->bAI:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->bZ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->xD:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/aq;->bAK:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/aq;->bAM:I

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/kingx/cloudsdk/aq;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static afz()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->aH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/kingx/cloudsdk/aq;->xu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lcom/kingx/cloudsdk/aq;->xv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->bAI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/kingx/cloudsdk/aq;->xy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/kingx/cloudsdk/aq;->xA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/kingx/cloudsdk/aq;->bAJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->bZ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->xD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/kingx/cloudsdk/aq;->bAK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-wide v0, p0, Lcom/kingx/cloudsdk/aq;->bAL:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget v0, p0, Lcom/kingx/cloudsdk/aq;->bAM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
