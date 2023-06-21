.class public abstract Lcom/kingroot/common/app/KApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/app/KApplication$a;,
        Lcom/kingroot/common/app/KApplication$c;,
        Lcom/kingroot/common/app/KApplication$b;
    }
.end annotation


# static fields
.field private static FA:Lcom/kingroot/common/app/KApplication$b;

.field private static Fx:Landroid/content/Context;

.field private static Fy:Landroid/content/Context;

.field private static Fz:Lcom/kingroot/kinguser/ri;

.field private static mProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kingroot/kinguser/ri;->a(Ljava/lang/Throwable;Ljava/lang/String;[B)V

    .line 202
    :cond_0
    return-void
.end method

.method public static aY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/kingroot/common/app/KApplication;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cd(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/app/KApplication;->mProcessName:Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lcom/kingroot/common/app/KApplication;->mProcessName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->g(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ge()Landroid/content/Context;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fy:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fx:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fy:Landroid/content/Context;

    goto :goto_0
.end method

.method private hR()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/kingroot/common/app/KApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/app/KApplication;->Fy:Landroid/content/Context;

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cd(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/app/KApplication;->mProcessName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/common/app/KApplication;->it()Lcom/kingroot/kinguser/ri;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    .line 100
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/kingroot/common/app/KApplication$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/common/app/KApplication$a;-><init>(Lcom/kingroot/common/app/KApplication$1;)V

    sput-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    .line 103
    :cond_1
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->b(Lcom/kingroot/common/app/KApplication$b;)Z

    move-result v0

    sget-object v1, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ri;->iw()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zg;->d(ZI)V

    goto :goto_0
.end method

.method private hS()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->iy()V

    .line 114
    :cond_0
    return-void
.end method

.method public static hT()I
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->iw()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static hU()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->iv()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hV()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hW()Lcom/kingroot/kinguser/cbw;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hX()Lcom/kingroot/kinguser/zf;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 235
    sget-object v1, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-nez v1, :cond_0

    .line 245
    :goto_0
    return-object v0

    .line 240
    :cond_0
    :try_start_0
    sget-object v1, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ri;->hX()Lcom/kingroot/kinguser/zf;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hY()I
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->c(Lcom/kingroot/common/app/KApplication$b;)I

    move-result v0

    return v0
.end method

.method public static hZ()I
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->d(Lcom/kingroot/common/app/KApplication$b;)I

    move-result v0

    return v0
.end method

.method public static ia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->e(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ib()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-virtual {v0}, Lcom/kingroot/common/app/KApplication$b;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ic()I
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-virtual {v0}, Lcom/kingroot/common/app/KApplication$b;->ix()I

    move-result v0

    goto :goto_0
.end method

.method public static ie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->f(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if()Lcom/kingroot/kinguser/vo;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->if()Lcom/kingroot/kinguser/vo;

    move-result-object v0

    return-object v0
.end method

.method public static ig()Lcom/kingroot/kinguser/zv;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->ig()Lcom/kingroot/kinguser/zv;

    move-result-object v0

    return-object v0
.end method

.method public static ih()Z
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->b(Lcom/kingroot/common/app/KApplication$b;)Z

    move-result v0

    return v0
.end method

.method public static ii()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->g(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ij()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->h(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ik()I
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 340
    :try_start_0
    sget-object v1, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v1}, Lcom/kingroot/common/app/KApplication$b;->h(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 343
    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static il()I
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->i(Lcom/kingroot/common/app/KApplication$b;)I

    move-result v0

    return v0
.end method

.method public static im()I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->j(Lcom/kingroot/common/app/KApplication$b;)I

    move-result v0

    return v0
.end method

.method public static in()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->k(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static io()Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v1}, Lcom/kingroot/common/app/KApplication$b;->g(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v1}, Lcom/kingroot/common/app/KApplication$b;->d(Lcom/kingroot/common/app/KApplication$b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v1}, Lcom/kingroot/common/app/KApplication$b;->h(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, ""

    sget-object v2, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v2}, Lcom/kingroot/common/app/KApplication$b;->k(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v2}, Lcom/kingroot/common/app/KApplication$b;->k(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->l(Lcom/kingroot/common/app/KApplication$b;)Lcom/kingroot/common/app/KApplication$c;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$c;->a(Lcom/kingroot/common/app/KApplication$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static iq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->m(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ir()Lcom/kingroot/kinguser/abs;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->ir()Lcom/kingroot/kinguser/abs;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is()Z
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->n(Lcom/kingroot/common/app/KApplication$b;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 61
    sput-object p1, Lcom/kingroot/common/app/KApplication;->Fx:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/kingroot/common/app/KApplication;->iu()Lcom/kingroot/common/app/KApplication$b;

    move-result-object v0

    sput-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    .line 63
    return-void
.end method

.method public it()Lcom/kingroot/kinguser/ri;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract iu()Lcom/kingroot/common/app/KApplication$b;
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 68
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/yw;->pe()V

    .line 74
    invoke-direct {p0}, Lcom/kingroot/common/app/KApplication;->hR()V

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/tw;->ka()V

    .line 78
    sget-object v0, Lcom/kingroot/common/app/KApplication;->FA:Lcom/kingroot/common/app/KApplication$b;

    invoke-static {v0}, Lcom/kingroot/common/app/KApplication$b;->a(Lcom/kingroot/common/app/KApplication$b;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->g([Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/kingroot/common/app/KApplication;->hS()V

    .line 82
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/kingroot/common/app/KApplication;->Fz:Lcom/kingroot/kinguser/ri;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ri;->onTerminate()V

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 122
    return-void
.end method
