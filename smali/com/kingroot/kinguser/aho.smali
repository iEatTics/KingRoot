.class public final Lcom/kingroot/kinguser/aho;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final are:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/ahp;",
            ">;>;"
        }
    .end annotation
.end field

.field private static arf:Lcom/kingroot/kinguser/ahp;

.field private static arg:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahx;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/aia;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahv;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahr;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahq;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    const-class v1, Lcom/kingroot/kinguser/ahs;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public static aO(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aho;->k(Landroid/content/Context;I)V

    .line 93
    return-void
.end method

.method private static aP(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    .line 101
    sget-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    .line 105
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 109
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/kingroot/kinguser/aho;->are:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahp;

    .line 113
    invoke-interface {v0}, Lcom/kingroot/kinguser/ahp;->xv()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    sput-object v0, Lcom/kingroot/kinguser/aho;->arf:Lcom/kingroot/kinguser/ahp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_2
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/aho;->arf:Lcom/kingroot/kinguser/ahp;

    if-nez v0, :cond_3

    .line 123
    new-instance v0, Lcom/kingroot/kinguser/aht;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aht;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aho;->arf:Lcom/kingroot/kinguser/ahp;

    .line 127
    :cond_3
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_0
    return-void
.end method

.method public static k(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aho;->arf:Lcom/kingroot/kinguser/ahp;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    .line 79
    :cond_2
    invoke-static {p0}, Lcom/kingroot/kinguser/aho;->aP(Landroid/content/Context;)V

    .line 81
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/kingroot/kinguser/aho;->arf:Lcom/kingroot/kinguser/ahp;

    sget-object v1, Lcom/kingroot/kinguser/aho;->arg:Landroid/content/ComponentName;

    invoke-interface {v0, p0, v1, p1}, Lcom/kingroot/kinguser/ahp;->a(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0
.end method
