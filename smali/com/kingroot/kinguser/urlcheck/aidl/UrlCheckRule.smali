.class public Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;
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
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bnp:Z

.field public flag:I

.field public nE:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    .line 30
    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    .line 34
    iput p1, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    .line 35
    iput-object p2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    .line 37
    iput-boolean p4, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    .line 30
    iput v1, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    .line 31
    iput-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    .line 45
    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
