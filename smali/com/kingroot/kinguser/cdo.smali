.class public final Lcom/kingroot/kinguser/cdo;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static bXD:Lcom/kingroot/kinguser/cdn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cdo;->a:Z

    new-instance v0, Lcom/kingroot/kinguser/cdr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cdr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "log message is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/cdn;->aP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    sput-boolean p0, Lcom/kingroot/kinguser/cdo;->a:Z

    sget-boolean v0, Lcom/kingroot/kinguser/cdo;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kingroot/kinguser/cdq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cdq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/cdr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cdr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "log message is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/cdn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "log message is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cdo;->bXD:Lcom/kingroot/kinguser/cdn;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/cdn;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
