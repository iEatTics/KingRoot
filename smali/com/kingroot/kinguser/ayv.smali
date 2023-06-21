.class public Lcom/kingroot/kinguser/ayv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ayf;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private final bdg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_QQPimPort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ayv;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayv;->bdg:Ljava/util/HashSet;

    .line 362
    new-instance v0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;-><init>(Lcom/kingroot/kinguser/ayv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayv;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-void
.end method

.method public static Vm()Z
    .locals 3

    .prologue
    const/16 v2, 0x138c

    .line 472
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 475
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v1

    if-nez v1, :cond_0

    .line 476
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    move-result v0

    .line 479
    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/kingroot/kinguser/ayi;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/ayi;-><init>(II)V

    throw v0

    .line 485
    :cond_0
    new-instance v1, Lcom/kingroot/loader/common/protocol/BaseProtocol;

    const/16 v0, 0x23

    invoke-direct {v1, v0}, Lcom/kingroot/loader/common/protocol/BaseProtocol;-><init>(I)V

    .line 486
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    .line 487
    invoke-virtual {v1}, Lcom/kingroot/loader/common/protocol/BaseProtocol;->transferToBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/ayv;->bdg:Ljava/util/HashSet;

    return-object v0
.end method

.method private c(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/ayv;->bdg:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 109
    invoke-static {p1}, Lcom/kingroot/loader/common/protocol/AbsProtocol;->getCmdId(Landroid/os/Bundle;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-object v9

    .line 111
    :sswitch_0
    new-instance v1, Lcom/kingroot/kinguser/azx;

    invoke-direct {v1}, Lcom/kingroot/kinguser/azx;-><init>()V

    .line 112
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/azx;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, v1, Lcom/kingroot/kinguser/azx;->bdH:Landroid/os/IBinder;

    if-nez v0, :cond_1

    move-object v0, v9

    .line 116
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v2

    iget v3, v1, Lcom/kingroot/kinguser/azx;->bcU:I

    iget-object v4, v1, Lcom/kingroot/kinguser/azx;->bcV:Lcom/qq/taf/jce/JceStruct;

    iget-object v1, v1, Lcom/kingroot/kinguser/azx;->bcW:Lcom/qq/taf/jce/JceStruct;

    new-instance v5, Lcom/kingroot/kinguser/ayv$1;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/ayv$1;-><init>(Lcom/kingroot/kinguser/ayv;Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, v1, Lcom/kingroot/kinguser/azx;->bdH:Landroid/os/IBinder;

    .line 115
    invoke-static {v0}, Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/qqpim/protocol/shark/ISharkCallback;

    move-result-object v0

    goto :goto_1

    .line 131
    :sswitch_1
    new-instance v0, Lcom/kingroot/kinguser/azw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azw;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azw;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azw;->bcT:Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/azw;->transferToBundle()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 137
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/azw;->bcT:Ljava/lang/String;

    goto :goto_2

    .line 142
    :sswitch_2
    new-instance v0, Lcom/kingroot/kinguser/bac;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bac;-><init>()V

    .line 143
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bac;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    iget v0, v0, Lcom/kingroot/kinguser/bac;->bdc:I

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aye;->bi(I)V

    goto :goto_0

    .line 148
    :sswitch_3
    new-instance v0, Lcom/kingroot/kinguser/bad;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bad;-><init>()V

    .line 149
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bad;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/bad;->bdd:[I

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/akw;->i([I)V

    goto :goto_0

    .line 155
    :sswitch_4
    new-instance v0, Lcom/kingroot/kinguser/azd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azd;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azd;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/kingroot/kinguser/azd;->bdt:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/kingroot/kinguser/azd;->bdu:Z

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 158
    if-nez v1, :cond_2

    .line 159
    iput v7, v0, Lcom/kingroot/kinguser/azd;->bdv:I

    .line 170
    :goto_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/azd;->transferToBundle()Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_0

    .line 160
    :cond_2
    if-ne v1, v4, :cond_3

    .line 161
    iput v4, v0, Lcom/kingroot/kinguser/azd;->bdv:I

    goto :goto_3

    .line 162
    :cond_3
    if-ne v1, v6, :cond_4

    .line 163
    iput v6, v0, Lcom/kingroot/kinguser/azd;->bdv:I

    goto :goto_3

    .line 164
    :cond_4
    if-ne v1, v5, :cond_5

    .line 165
    iput v5, v0, Lcom/kingroot/kinguser/azd;->bdv:I

    goto :goto_3

    .line 167
    :cond_5
    const/4 v1, -0x3

    iput v1, v0, Lcom/kingroot/kinguser/azd;->bdv:I

    goto :goto_3

    .line 173
    :sswitch_5
    new-instance v0, Lcom/kingroot/kinguser/aze;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aze;-><init>()V

    .line 174
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aze;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "syncHelper install service"

    invoke-static {v1}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/kingroot/kinguser/aze;->bdw:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    goto/16 :goto_0

    .line 180
    :sswitch_6
    new-instance v1, Lcom/kingroot/kinguser/ayy;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ayy;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ayy;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vh()Lcom/kingroot/kinguser/ayu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayu;->Ky()Ljava/util/List;

    move-result-object v0

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/ayy;->bdq:Ljava/util/ArrayList;

    .line 185
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 186
    iget-object v3, v1, Lcom/kingroot/kinguser/ayy;->bdq:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 189
    :cond_6
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ayy;->transferToBundle()Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_0

    .line 192
    :sswitch_7
    new-instance v0, Lcom/kingroot/kinguser/ayx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayx;-><init>()V

    .line 193
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ayx;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/kingroot/kinguser/ayv;->bdg:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/kingroot/kinguser/ayx;->bdp:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    iget-object v2, v2, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vh()Lcom/kingroot/kinguser/ayu;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/ayx;->bdp:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayt;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ayv;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v1, v0, v4, v2}, Lcom/kingroot/kinguser/ayu;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto/16 :goto_0

    .line 201
    :sswitch_8
    new-instance v0, Lcom/kingroot/kinguser/aza;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aza;-><init>()V

    .line 202
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aza;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vh()Lcom/kingroot/kinguser/ayu;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/aza;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    iget-object v0, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayu;->hK(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :sswitch_9
    new-instance v0, Lcom/kingroot/kinguser/azc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azc;-><init>()V

    .line 210
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azc;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vh()Lcom/kingroot/kinguser/ayu;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azc;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    iget-object v0, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayu;->hL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :sswitch_a
    new-instance v0, Lcom/kingroot/kinguser/azb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azb;-><init>()V

    .line 218
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azb;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vh()Lcom/kingroot/kinguser/ayu;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/azb;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-static {v2}, Lcom/kingroot/kinguser/ayt;->b(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ayu;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 222
    iget-object v0, v0, Lcom/kingroot/kinguser/azb;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ayv;->c(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    goto/16 :goto_0

    .line 226
    :sswitch_b
    new-instance v0, Lcom/kingroot/kinguser/ayz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayz;-><init>()V

    .line 227
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ayz;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, v0, Lcom/kingroot/kinguser/ayz;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayt;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->i(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ayz;->bds:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayz;->transferToBundle()Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_0

    .line 233
    :sswitch_c
    new-instance v8, Lcom/kingroot/kinguser/azv;

    invoke-direct {v8}, Lcom/kingroot/kinguser/azv;-><init>()V

    .line 234
    invoke-virtual {v8, p1}, Lcom/kingroot/kinguser/azv;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget v1, v8, Lcom/kingroot/kinguser/azv;->bdA:I

    .line 237
    const/16 v0, 0x1f5

    if-lt v1, v0, :cond_0

    const/16 v0, 0x1fe

    if-gt v1, v0, :cond_0

    .line 238
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlNotificationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlNotificationManager;

    .line 239
    iget-object v2, v8, Lcom/kingroot/kinguser/azv;->bdE:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 240
    const/16 v2, 0x138c

    iget-object v3, v8, Lcom/kingroot/kinguser/azv;->bdE:Landroid/content/Intent;

    invoke-interface {v0, v2, v3, v7}, Lcom/kingroot/loader/sdk/service/IKlNotificationManager;->wrapKlFragmentIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    add-int/lit16 v1, v1, 0x1f5

    iget-object v2, v8, Lcom/kingroot/kinguser/azv;->bdB:Ljava/lang/String;

    iget-object v3, v8, Lcom/kingroot/kinguser/azv;->bdC:Ljava/lang/String;

    iget-object v4, v8, Lcom/kingroot/kinguser/azv;->bdD:Ljava/lang/String;

    iget-object v5, v8, Lcom/kingroot/kinguser/azv;->bdF:Ljava/lang/String;

    iget-boolean v8, v8, Lcom/kingroot/kinguser/azv;->bdG:Z

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZZ)V

    goto/16 :goto_0

    .line 248
    :sswitch_d
    new-instance v0, Lcom/kingroot/kinguser/azu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azu;-><init>()V

    .line 249
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azu;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    iget v0, v0, Lcom/kingroot/kinguser/azu;->bdA:I

    add-int/lit16 v0, v0, 0x1f5

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adm;->cy(I)V

    goto/16 :goto_0

    .line 256
    :sswitch_e
    new-instance v0, Lcom/kingroot/kinguser/baa;

    invoke-direct {v0}, Lcom/kingroot/kinguser/baa;-><init>()V

    .line 257
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/baa;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/baa;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->d(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    goto/16 :goto_0

    .line 263
    :sswitch_f
    new-instance v0, Lcom/kingroot/kinguser/azy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azy;-><init>()V

    .line 264
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azy;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azy;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->e(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    goto/16 :goto_0

    .line 270
    :sswitch_10
    new-instance v0, Lcom/kingroot/kinguser/azz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azz;-><init>()V

    .line 271
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azz;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azz;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->f(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    goto/16 :goto_0

    .line 277
    :sswitch_11
    new-instance v0, Lcom/kingroot/kinguser/bab;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bab;-><init>()V

    .line 278
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bab;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/bab;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->g(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    goto/16 :goto_0

    .line 284
    :sswitch_12
    new-instance v0, Lcom/kingroot/kinguser/azi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azi;-><init>()V

    .line 285
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azi;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azi;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :sswitch_13
    new-instance v0, Lcom/kingroot/kinguser/azf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azf;-><init>()V

    .line 292
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azf;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azf;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :sswitch_14
    new-instance v0, Lcom/kingroot/kinguser/azg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azg;-><init>()V

    .line 299
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azg;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azg;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :sswitch_15
    new-instance v0, Lcom/kingroot/kinguser/azk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azk;-><init>()V

    .line 306
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azk;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azk;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->ke(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :sswitch_16
    new-instance v0, Lcom/kingroot/kinguser/azj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azj;-><init>()V

    .line 313
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azj;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azj;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kf(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :sswitch_17
    new-instance v0, Lcom/kingroot/kinguser/azh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azh;-><init>()V

    .line 320
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azh;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/azh;->bdx:Ljava/lang/String;

    iget v0, v0, Lcom/kingroot/kinguser/azh;->bdy:I

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ays;->J(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 326
    :sswitch_18
    new-instance v0, Lcom/kingroot/kinguser/azm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azm;-><init>()V

    .line 327
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azm;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azm;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :sswitch_19
    new-instance v0, Lcom/kingroot/kinguser/azn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azn;-><init>()V

    .line 334
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azn;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azn;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kh(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :sswitch_1a
    new-instance v0, Lcom/kingroot/kinguser/azl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azl;-><init>()V

    .line 341
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/azl;->readFromBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/azl;->bdx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->ki(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :sswitch_1b
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;

    invoke-direct {v1}, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;->login(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x3e8 -> :sswitch_1b
    .end sparse-switch
.end method

.method public getPluginId()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x138c

    return v0
.end method
