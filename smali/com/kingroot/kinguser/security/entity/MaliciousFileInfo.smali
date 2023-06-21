.class public Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;
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
            "Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GG:Ljava/lang/String;

.field private Gx:Ljava/lang/String;

.field private biN:Ljava/lang/String;

.field private biO:Ljava/lang/String;

.field private biP:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->GG:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biN:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->mType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Gx:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biO:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    .line 49
    iput-object p2, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Gx:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->GG:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public Ys()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biO:Ljava/lang/String;

    return-object v0
.end method

.method public Yt()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public ii(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    .line 99
    return-void
.end method

.method public jk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Gx:Ljava/lang/String;

    return-object v0
.end method

.method public kL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biN:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public kM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biO:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->mType:I

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->GG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Gx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->biP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
