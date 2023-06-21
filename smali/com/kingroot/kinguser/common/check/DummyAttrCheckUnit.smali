.class public Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;
.super Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Gx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/BaseSuCheckUnit;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public d(ZZ)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public yQ()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 41
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$1;-><init>(Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ze()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    const-string v2, "/mnt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;->Gx:Ljava/lang/String;

    const-string v2, "/dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method
