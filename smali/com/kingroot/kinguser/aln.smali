.class public Lcom/kingroot/kinguser/aln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asy;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static axU:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aln;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private axV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private axW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;",
            ">;"
        }
    .end annotation
.end field

.field private axX:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppMarketInstallerService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aln;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/aln$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aln$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aln;->axU:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aln;->axW:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;-><init>(Lcom/kingroot/kinguser/aln;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aln;->axX:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aln$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/aln;-><init>()V

    return-void
.end method

.method private B(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 239
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07041d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 238
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    const/16 v0, 0xe

    if-eq p2, v0, :cond_3

    const/16 v0, 0xf

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 245
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07041c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 244
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static GS()Lcom/kingroot/kinguser/aln;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/kingroot/kinguser/aln;->axU:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aln;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aln;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aln;->B(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aln;I)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aln;->fi(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/aln;->axW:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 2

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 188
    if-nez v0, :cond_1

    .line 189
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/aln;I)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aln;->fh(I)Z

    move-result v0

    return v0
.end method

.method private fh(I)Z
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x9

    if-lt p1, v0, :cond_0

    const/16 v0, 0x16

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fi(I)Z
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GT()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aso;->GT()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public GU()Z
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aso;->GU()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/aln;->b(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/aln;->axW:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aln;->axX:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 153
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 3

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 178
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/kingroot/kinguser/aln;->axV:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aln;->axX:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aln;->b(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 165
    return-void
.end method
