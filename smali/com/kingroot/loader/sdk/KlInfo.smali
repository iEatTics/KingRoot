.class public Lcom/kingroot/loader/sdk/KlInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/sdk/KlInfo$KlInfoEntry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_INT_VALUE:I = -0x1


# instance fields
.field public backEntryClass:Ljava/lang/String;

.field public buildHostId:I

.field public buildHostVersion:I

.field public foreEntryClass:Ljava/lang/String;

.field public installState:I

.field public packageMd5:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pluginId:I

.field public rawPluginPath:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/kingroot/loader/sdk/KlInfo$1;

    invoke-direct {v0}, Lcom/kingroot/loader/sdk/KlInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/loader/sdk/KlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 27
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 28
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 27
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 28
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 137
    invoke-direct {p0, p1}, Lcom/kingroot/loader/sdk/KlInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/loader/sdk/KlInfo$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingroot/loader/sdk/KlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 27
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 28
    iput v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 48
    iput-object p1, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 152
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoParsed()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    if-eq v1, v2, :cond_0

    .line 74
    iget v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    if-eq v1, v2, :cond_0

    .line 75
    iget v1, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    if-eq v1, v2, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transferToContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    const-string v1, "xl"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v1, "xa"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "xb"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v1, "xj"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v1, "xk"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v1, "xc"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "xd"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "xe"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "xf"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "xg"

    iget v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v1, "xi"

    iget-object v2, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
