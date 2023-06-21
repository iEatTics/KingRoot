.class public Lcom/kingroot/loader/sdk/KlConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/sdk/KlConfig$KlConfigEntry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/loader/sdk/KlConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DISABLE:I = 0x1


# instance fields
.field private mFlag:I

.field private mPluginId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/kingroot/loader/sdk/KlConfig$1;

    invoke-direct {v0}, Lcom/kingroot/loader/sdk/KlConfig$1;-><init>()V

    sput-object v0, Lcom/kingroot/loader/sdk/KlConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    .line 19
    iput p1, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    .line 20
    iput p2, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/loader/sdk/KlConfig$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/kingroot/loader/sdk/KlConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    return v0
.end method

.method public isPluginDisabled()Z
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bko;->B(II)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlagSetting(IZ)V
    .locals 2

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    goto :goto_0
.end method

.method public transferToContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    const-string v1, "xa"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v1, "xb"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mPluginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/kingroot/loader/sdk/KlConfig;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
