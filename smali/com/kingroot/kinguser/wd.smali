.class public final Lcom/kingroot/kinguser/wd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/wd$a;
    }
.end annotation


# static fields
.field public static Mu:Lcom/kingroot/kinguser/wd$a;


# instance fields
.field private Mv:Ljava/lang/String;

.field private Mw:Ljava/lang/String;

.field private Mx:Lcom/kingroot/kinguser/wf;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/wd$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wd$a;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/wd;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "wx_id_release"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wd;->Mv:Ljava/lang/String;

    .line 46
    const-string v0, "wx_secret_release"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wd;->Mw:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/kingroot/kinguser/wd;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "wx_id_debug"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wd;->Mv:Ljava/lang/String;

    .line 49
    const-string v0, "wx_secret_debug"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wd;->Mw:Ljava/lang/String;

    .line 53
    :cond_0
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/wf;

    iget-object v1, p0, Lcom/kingroot/kinguser/wd;->Mv:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/wf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wd;->Mx:Lcom/kingroot/kinguser/wf;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static X(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 125
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "7CC749CFC0FB5677E6ABA342EDBDBA5A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 133
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static nl()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isWXAppInstalled()Z
    .locals 1

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/wd;->Mx:Lcom/kingroot/kinguser/wf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wf;->isWXAppInstalled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nk()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/wd;->Mx:Lcom/kingroot/kinguser/wf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wf;->no()V

    .line 97
    return-void
.end method

.method public nm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/wd;->Mv:Ljava/lang/String;

    return-object v0
.end method

.method public nn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/wd;->Mw:Ljava/lang/String;

    return-object v0
.end method
