.class final Lcom/kingroot/kinguser/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/fp;


# instance fields
.field final synthetic ql:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/kingroot/kinguser/gf;->ql:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 199
    invoke-static {p1}, Lcom/kingroot/kinguser/gb;->ah(Ljava/lang/String;)Lcom/kingroot/kinguser/ew;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/gf;->ql:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
