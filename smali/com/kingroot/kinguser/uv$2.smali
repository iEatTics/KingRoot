.class Lcom/kingroot/kinguser/uv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jg:Ljava/lang/Object;

.field final synthetic Jh:Ljava/lang/Class;

.field final synthetic Ji:Lcom/kingroot/kinguser/uv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/uv;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/uv$2;->Ji:Lcom/kingroot/kinguser/uv;

    iput-object p2, p0, Lcom/kingroot/kinguser/uv$2;->Jg:Ljava/lang/Object;

    iput-object p3, p0, Lcom/kingroot/kinguser/uv$2;->Jh:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/uv$2;->Jg:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uv$2;->Ji:Lcom/kingroot/kinguser/uv;

    iget-object v1, p0, Lcom/kingroot/kinguser/uv$2;->Jg:Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/uv$2;->Jh:Ljava/lang/Class;

    invoke-static {v0, p2, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Lcom/kingroot/kinguser/uv;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Lcom/kingroot/kinguser/uw;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/uw;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
