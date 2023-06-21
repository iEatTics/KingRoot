.class Lcom/kingroot/kinguser/bba$1$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bba$1;->execute(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bez:Lcom/kingroot/kinguser/bba$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bba$1;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kingroot/kinguser/bba$1$2;->bez:Lcom/kingroot/kinguser/bba$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/afg;->vc()Z

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/asm;->Od()Lcom/kingroot/kinguser/asm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asm;->Of()V

    .line 122
    return-void
.end method
