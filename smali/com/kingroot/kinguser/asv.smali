.class public Lcom/kingroot/kinguser/asv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static aAy:Lcom/kingroot/kinguser/bed;

.field private static aNE:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    const-string v0, "ku_utils__GameBoxShortCut"

    sput-object v0, Lcom/kingroot/kinguser/asv;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/asv$1;

    invoke-direct {v3}, Lcom/kingroot/kinguser/asv$1;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/asv;->aNE:Lcom/kingroot/kinguser/bed;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/asv$2;

    invoke-direct {v3}, Lcom/kingroot/kinguser/asv$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/asv;->aAy:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static Oy()Z
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgx;->aL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static Oz()V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    const-class v3, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;

    invoke-static {v2, v0, v3, v1}, Lcom/kingroot/kinguser/bgx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method

.method public static cJ(Z)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/asv;->aAy:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DU()V

    .line 37
    return-void
.end method

.method private static cK(Z)V
    .locals 4

    .prologue
    const v3, 0x7f020148

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070140

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    const/4 v0, 0x0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OF()Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    :goto_0
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    const-class v3, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;

    invoke-static {v2, v1, v3, v0}, Lcom/kingroot/kinguser/bgx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/graphics/Bitmap;)V

    .line 100
    return-void

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v0}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic cL(Z)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/kingroot/kinguser/asv;->cK(Z)V

    return-void
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/asv;->Oz()V

    return-void
.end method
