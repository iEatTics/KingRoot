.class public Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;
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
            "Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apA:Landroid/net/Uri;

.field public apB:Landroid/net/Uri;

.field public apC:Landroid/net/Uri;

.field public apD:Ljava/lang/String;

.field public apE:Ljava/lang/String;

.field public apF:I

.field public apG:I

.field public apH:I

.field public apI:Ljava/lang/String;

.field public apkPath:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public apz:I

.field public pkgName:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    .line 52
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apA:Landroid/net/Uri;

    .line 53
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apB:Landroid/net/Uri;

    .line 54
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apC:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apF:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static b(Landroid/content/Intent;I)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;
    .locals 5

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;-><init>()V

    .line 106
    iput p1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    .line 107
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apA:Landroid/net/Uri;

    .line 108
    const-string v0, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apB:Landroid/net/Uri;

    .line 109
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apC:Landroid/net/Uri;

    .line 110
    iget-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zh;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    .line 125
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 127
    iget-object v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 135
    :goto_1
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 135
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static fM(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 166
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 167
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 168
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public valid()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apA:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apB:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apC:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public xa()Z
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apz:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public xb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    packed-switch v0, :pswitch_data_0

    .line 160
    const-string v0, ""

    :goto_0
    return-object v0

    .line 149
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704a0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704a3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704a1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
