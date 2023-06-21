.class public Lcom/kingroot/kinguser/xmod/TpsEvent;
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
            "Lcom/kingroot/kinguser/xmod/TpsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bug:[Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/xmod/TpsEvent$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xmod/TpsEvent$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/xmod/TpsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->type:I

    .line 24
    iput p1, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->type:I

    .line 25
    iput-object p2, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->bug:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->type:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->type:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->bug:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/TpsEvent;->bug:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 38
    return-void
.end method
