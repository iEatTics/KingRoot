.class public Lcom/kingroot/kinguser/advance/model/AdvancePermModel;
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
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apt:I

.field public apu:I

.field public apv:I

.field public packageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apu:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    :try_start_0
    check-cast p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 97
    iget-object v1, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    iget v2, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
