.class Lcom/kingroot/kinguser/auu$3;
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
    .line 148
    iput-object p1, p0, Lcom/kingroot/kinguser/auu$3;->this$0:Lcom/kingroot/kinguser/auu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agy;->wl()V

    .line 153
    return-void
.end method
