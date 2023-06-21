.class final Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;
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
        "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aQ(Landroid/os/Parcel;)Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo$1;->aQ(Landroid/os/Parcel;)Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    move-result-object v0

    return-object v0
.end method

.method public jg(I)[Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;
    .locals 1

    .prologue
    .line 187
    new-array v0, p1, [Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo$1;->jg(I)[Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    move-result-object v0

    return-object v0
.end method
