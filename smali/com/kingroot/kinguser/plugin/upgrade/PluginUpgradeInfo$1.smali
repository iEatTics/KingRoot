.class final Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
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
        "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aI(Landroid/os/Parcel;)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo$1;->aI(Landroid/os/Parcel;)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v0

    return-object v0
.end method

.method public hI(I)[Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    .locals 1

    .prologue
    .line 296
    new-array v0, p1, [Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo$1;->hI(I)[Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v0

    return-object v0
.end method
