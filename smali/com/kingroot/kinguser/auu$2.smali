.class Lcom/kingroot/kinguser/auu$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auu;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->e(Lcom/kingroot/kinguser/auu;)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v1}, Lcom/kingroot/kinguser/auu;->c(Lcom/kingroot/kinguser/auu;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v2}, Lcom/kingroot/kinguser/auu;->a(Lcom/kingroot/kinguser/auu;)Z

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v3}, Lcom/kingroot/kinguser/auu;->a(Lcom/kingroot/kinguser/auu;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aul$b;->a(IZZ)V

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->f(Lcom/kingroot/kinguser/auu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v1}, Lcom/kingroot/kinguser/auu;->f(Lcom/kingroot/kinguser/auu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aul$b;->bm(Ljava/util/List;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$b;->Qv()V

    .line 145
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v0}, Lcom/kingroot/kinguser/auu;->d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu$2;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-static {v1}, Lcom/kingroot/kinguser/auu;->a(Lcom/kingroot/kinguser/auu;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aul$b;->cW(Z)V

    goto :goto_0
.end method
