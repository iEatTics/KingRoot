.class public Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;
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
            "Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Bk:Ljava/lang/String;

.field private aMj:I

.field private mPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->mPkg:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->aMj:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Bk:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->mPkg:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->aMj:I

    .line 18
    iput-object p3, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Bk:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public Nw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public Nx()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->aMj:I

    return v0
.end method

.method public Ny()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Bk:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->aMj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Bk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
