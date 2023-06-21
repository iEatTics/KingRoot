.class Lcom/kingroot/kinguser/aur$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aur;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aur;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/aur$3;->this$0:Lcom/kingroot/kinguser/aur;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->uj()V

    .line 226
    return-void
.end method
