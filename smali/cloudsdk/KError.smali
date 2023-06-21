.class public Lcloudsdk/KError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:I

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcloudsdk/KError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcloudsdk/KError;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcloudsdk/KError;->e:Ljava/lang/String;

    return-void
.end method

.method public static clean()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 109
    :cond_0
    return-void
.end method

.method public static exist()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 117
    if-eqz v0, :cond_0

    const-string v1, "0"

    iget-object v0, v0, Lcloudsdk/KError;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 87
    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcloudsdk/KError;->f:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public static getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string v0, "0"

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcloudsdk/KError;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 75
    if-nez v0, :cond_0

    .line 76
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcloudsdk/KError;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMsgAndCause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/KError;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcloudsdk/KError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcloudsdk/KError;->getThrowMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThrowMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_cause_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_cause_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static set(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcloudsdk/KError;->set(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static set(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcloudsdk/KError;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcloudsdk/KError;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcloudsdk/KError;

    invoke-direct {v0}, Lcloudsdk/KError;-><init>()V

    .line 37
    sget-object v1, Lcloudsdk/KError;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 39
    :cond_0
    iput-object p0, v0, Lcloudsdk/KError;->d:Ljava/lang/String;

    .line 40
    iput-object p1, v0, Lcloudsdk/KError;->e:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lcloudsdk/KError;->f:Ljava/lang/Throwable;

    .line 42
    return-void
.end method
