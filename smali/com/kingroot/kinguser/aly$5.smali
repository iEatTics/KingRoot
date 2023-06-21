.class Lcom/kingroot/kinguser/aly$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aly;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$5;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$5;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/aly;)Z

    .line 154
    return-void
.end method
