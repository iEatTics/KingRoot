.class public Lcom/kingroot/kinguser/afk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afk$e;,
        Lcom/kingroot/kinguser/afk$d;,
        Lcom/kingroot/kinguser/afk$a;,
        Lcom/kingroot/kinguser/afk$b;,
        Lcom/kingroot/kinguser/afk$c;,
        Lcom/kingroot/kinguser/afk$f;
    }
.end annotation


# instance fields
.field public aha:Z

.field public mChecked:Z

.field public mDescription:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/afk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/afk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object p1, p0, Lcom/kingroot/kinguser/afk;->mName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/kingroot/kinguser/afk;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 52
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/afk;->aha:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method
