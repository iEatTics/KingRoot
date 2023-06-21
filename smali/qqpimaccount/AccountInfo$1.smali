.class final Lqqpimaccount/AccountInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqqpimaccount/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lqqpimaccount/AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lqqpimaccount/AccountInfo$1;->createFromParcel(Landroid/os/Parcel;)Lqqpimaccount/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lqqpimaccount/AccountInfo;
    .locals 1

    new-instance v0, Lqqpimaccount/AccountInfo;

    invoke-direct {v0, p1}, Lqqpimaccount/AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lqqpimaccount/AccountInfo$1;->newArray(I)[Lqqpimaccount/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lqqpimaccount/AccountInfo;
    .locals 1

    new-array v0, p1, [Lqqpimaccount/AccountInfo;

    return-object v0
.end method
