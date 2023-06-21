.class Lcom/kingroot/kinguser/bin$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btK:Lcom/kingroot/kinguser/bin;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$1;->btK:Lcom/kingroot/kinguser/bin;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$1;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->a(Lcom/kingroot/kinguser/bin;)V

    .line 216
    return-void
.end method
