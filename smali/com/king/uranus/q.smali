.class public final Lcom/king/uranus/q;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic wd:Z


# instance fields
.field public bk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/king/uranus/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/king/uranus/q;->wd:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/q;->j(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/q;->j(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :cond_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    sget-boolean v1, Lcom/king/uranus/q;->wd:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_0
    check-cast p1, Lcom/king/uranus/q;

    .line 57
    iget-object v0, p0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    iget-object v1, p1, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    .line 36
    return-void
.end method
