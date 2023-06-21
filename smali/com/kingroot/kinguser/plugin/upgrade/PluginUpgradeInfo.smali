.class public Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
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
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bdO:Ljava/lang/String;

.field public bdP:Ljava/lang/String;

.field public bdQ:Ljava/lang/String;

.field public bdR:I

.field public bdS:J

.field public bdT:J

.field public bdU:I

.field public downloadCount:I

.field public lastDownloadTime:J

.field public packageMd5:Ljava/lang/String;

.field public pf:I

.field public pluginId:I

.field public size:I

.field public url:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 25
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 79
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 82
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 85
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 88
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 90
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 92
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 25
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 79
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 82
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 85
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 88
    iput v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 90
    iput-wide v4, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 286
    return-void
.end method


# virtual methods
.method public Vt()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Vu()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public transferToContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v1, "xa"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "xb"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "xc"

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "xd"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "xe"

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "xf"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "xg"

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "xi"

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "xk"

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "xl"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "xm"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "xn"

    iget-wide v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v1, "xo"

    iget-wide v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v1, "xp"

    iget v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v1, "xq"

    iget-wide v2, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    return-void
.end method
