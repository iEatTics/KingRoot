.class public Lkingcom/core/network/download/NetworkLoadTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkingcom/core/network/download/NetworkLoadTaskInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lkingcom/core/network/download/NetworkLoadTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public bVY:F

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/kingroot/kinguser/cag;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cag;-><init>()V

    sput-object v0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    .line 36
    const/4 v0, -0x2

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    .line 36
    const/4 v0, -0x2

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    .line 125
    invoke-virtual {p0, p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/caf;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    .line 36
    const/4 v0, -0x2

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget v0, p1, Lcom/kingroot/kinguser/caf;->a:I

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->a:I

    .line 75
    iget-object v0, p1, Lcom/kingroot/kinguser/caf;->b:Ljava/lang/String;

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->b:Ljava/lang/String;

    .line 76
    iget-boolean v0, p1, Lcom/kingroot/kinguser/caf;->c:Z

    iput-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    .line 77
    iget v0, p1, Lcom/kingroot/kinguser/caf;->d:I

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    .line 78
    iget-object v0, p1, Lcom/kingroot/kinguser/caf;->e:Ljava/lang/String;

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->e:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/kingroot/kinguser/caf;->f:Ljava/lang/String;

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->f:Ljava/lang/String;

    .line 80
    iget-wide v0, p1, Lcom/kingroot/kinguser/caf;->g:J

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    .line 81
    iget-wide v0, p1, Lcom/kingroot/kinguser/caf;->h:J

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->h:J

    .line 82
    iget v0, p1, Lcom/kingroot/kinguser/caf;->bVY:F

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->bVY:F

    .line 83
    iget v0, p1, Lcom/kingroot/kinguser/caf;->j:I

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->j:I

    .line 84
    iget v0, p1, Lcom/kingroot/kinguser/caf;->l:I

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method protected d(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->e:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->f:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->h:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->bVY:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->j:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    .line 142
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 111
    iget v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->bVY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    iget v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lkingcom/core/network/download/NetworkLoadTaskInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
