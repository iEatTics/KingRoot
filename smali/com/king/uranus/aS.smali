.class public final Lcom/king/uranus/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/hk;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/king/uranus/aS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pid:I

.field public process:Ljava/lang/String;

.field public sU:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/jg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/jg;-><init>()V

    sput-object v0, Lcom/king/uranus/aS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/king/uranus/aS;-><init>(IILjava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/king/uranus/aS;->uid:I

    .line 23
    iput p1, p0, Lcom/king/uranus/aS;->pid:I

    .line 24
    iput-object p3, p0, Lcom/king/uranus/aS;->process:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/king/uranus/aS;->sU:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/king/uranus/aS;->uid:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/king/uranus/aS;->pid:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/aS;->process:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public aY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/king/uranus/aS;->process:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/king/uranus/aS;->uid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/king/uranus/aS;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/king/uranus/aS;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/king/uranus/aS;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
