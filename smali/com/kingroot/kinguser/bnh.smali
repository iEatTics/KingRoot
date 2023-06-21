.class public Lcom/kingroot/kinguser/bnh;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->a:Z

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->b:Z

    invoke-static {}, Lcom/kingroot/kinguser/bnh;->a()V

    return-void
.end method

.method private static a()V
    .locals 1

    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bnh;->b()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bnh;->b()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/bnh;->c()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/bnh;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->a:Z

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->b:Z

    return-void
.end method

.method private static c()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->b:Z

    return-void
.end method

.method private static d()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->a:Z

    sput-boolean v0, Lcom/kingroot/kinguser/bnh;->b:Z

    return-void
.end method
