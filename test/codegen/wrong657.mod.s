##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 7 of <array 7 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <bool> %ebp-18 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t4
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $90388, %eax            #  11:     return 90388
    jmp     l_f1_exit              
    movl    $71192, %eax            #  12:     return 71192
    jmp     l_f1_exit              
    movl    $74353, %eax            #  13:     return 74353
    jmp     l_f1_exit              
    movl    $39450, %eax            #  14:     return 39450
    jmp     l_f1_exit              
l_f1_14_while_cond:
    jmp     l_f1_13                 #  16:     goto   13
    jmp     l_f1_14_while_cond      #  17:     goto   14_while_cond
l_f1_13:
    movl    $85164, %eax            #  19:     if     85164 <= 23969 goto 17_if_true
    movl    $23969, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  20:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $98, %eax               #  25:     if     98 > 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  26:     goto   22_if_false
l_f1_21_if_true:
    jmp     l_f1_20                 #  28:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $46147, %eax            #  31:     if     46147 <= 56987 goto 25_if_true
    movl    $56987, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  32:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  34:     goto   24
l_f1_26_if_false:
l_f1_24:
    call    dummyCHARfunc           #  37:     call   t6 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    call    dummyBOOLfunc           #  38:     call   t7 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_6                  #  39:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t9       <bool> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 6 of <array 8 of <array 3 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 > 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $7898, %eax             #   4:     if     7898 < 58805 goto 5
    movl    $58805, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_7:
    movzbl  -14(%ebp), %eax         #  12:     assign v3 <- t3
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  13:     if     100 > 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_10                
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_12                 #  17:     goto   12
l_f2_11:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_12:
    movzbl  -15(%ebp), %eax         #  21:     return t4
    jmp     l_f2_exit              
    movl    $68015, %eax            #  22:     if     68015 <= 85873 goto 15
    movl    $85873, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_15                
    jmp     l_f2_16                 #  23:     goto   16
l_f2_15:
    movl    $1, %eax                #  25:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_17                 #  26:     goto   17
l_f2_16:
    movl    $0, %eax                #  28:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_17:
    movzbl  -16(%ebp), %eax         #  30:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  31:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_21_if_false        #  33:     goto   21_if_false
    movl    $99, %eax               #  34:     if     99 = 97 goto 24
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_24                
    jmp     l_f2_25                 #  35:     goto   25
l_f2_24:
    movl    $1, %eax                #  37:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_26                 #  38:     goto   26
l_f2_25:
    movl    $0, %eax                #  40:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_26:
    movzbl  -17(%ebp), %eax         #  42:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_28                 #  43:     goto   28
l_f2_28:
    movl    $0, %eax                #  45:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_19                 #  46:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_34_if_false        #  49:     goto   34_if_false
    movl    $99, %eax               #  50:     if     99 > 98 goto 36_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_36_if_true        
    jmp     l_f2_37_if_false        #  51:     goto   37_if_false
l_f2_36_if_true:
    jmp     l_f2_35                 #  53:     goto   35
l_f2_37_if_false:
l_f2_35:
    jmp     l_f2_41_if_false        #  56:     goto   41_if_false
    jmp     l_f2_39                 #  57:     goto   39
l_f2_41_if_false:
l_f2_39:
    movl    $72545, %eax            #  60:     if     72545 >= 50169 goto 43_if_true
    movl    $50169, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_43_if_true        
    jmp     l_f2_44_if_false        #  61:     goto   44_if_false
l_f2_43_if_true:
    jmp     l_f2_42                 #  63:     goto   42
l_f2_44_if_false:
l_f2_42:
    movl    $100, %eax              #  66:     if     100 < 99 goto 47
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_47                
    jmp     l_f2_48                 #  67:     goto   48
l_f2_47:
    movl    $1, %eax                #  69:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_49                 #  70:     goto   49
l_f2_48:
    movl    $0, %eax                #  72:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f2_49:
    movzbl  -18(%ebp), %eax         #  74:     return t7
    jmp     l_f2_exit              
    movl    $100, %eax              #  75:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  76:     call   WriteChar
    addl    $4, %esp               
    movl    $92468, %eax            #  77:     if     92468 < 46936 goto 53
    movl    $46936, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_53                
    jmp     l_f2_54                 #  78:     goto   54
l_f2_53:
    movl    $1, %eax                #  80:     assign t8 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_55                 #  81:     goto   55
l_f2_54:
    movl    $0, %eax                #  83:     assign t8 <- 0
    movb    %al, -19(%ebp)         
l_f2_55:
    movzbl  -19(%ebp), %eax         #  85:     return t8
    jmp     l_f2_exit              
    movl    $98907, %eax            #  86:     if     98907 > 55852 goto 58_if_true
    movl    $55852, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_58_if_true        
    jmp     l_f2_59_if_false        #  87:     goto   59_if_false
l_f2_58_if_true:
    jmp     l_f2_57                 #  89:     goto   57
l_f2_59_if_false:
l_f2_57:
    movl    $97, %eax               #  92:     if     97 >= 99 goto 62
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_62                
    jmp     l_f2_63                 #  93:     goto   63
l_f2_62:
    movl    $1, %eax                #  95:     assign t9 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_64                 #  96:     goto   64
l_f2_63:
    movl    $0, %eax                #  98:     assign t9 <- 0
    movb    %al, -20(%ebp)         
l_f2_64:
    movzbl  -20(%ebp), %eax         # 100:     return t9
    jmp     l_f2_exit              
    movl    $97, %eax               # 101:     if     97 > 99 goto 67_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_67_if_true        
    jmp     l_f2_68_if_false        # 102:     goto   68_if_false
l_f2_67_if_true:
    jmp     l_f2_66                 # 104:     goto   66
l_f2_68_if_false:
l_f2_66:
    call    dummyBOOLfunc           # 107:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_72_while_cond:
    movl    $98, %eax               # 109:     if     98 <= 100 goto 73_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_73_while_body     
    jmp     l_f2_71                 # 110:     goto   71
l_f2_73_while_body:
    jmp     l_f2_72_while_cond      # 112:     goto   72_while_cond
l_f2_71:
l_f2_76_while_cond:
    movl    $1, %eax                # 115:     if     1 # 1 goto 77_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_77_while_body     
    jmp     l_f2_75                 # 116:     goto   75
l_f2_77_while_body:
    jmp     l_f2_76_while_cond      # 118:     goto   76_while_cond
l_f2_75:
    jmp     l_f2_81_if_false        # 120:     goto   81_if_false
    jmp     l_f2_79                 # 121:     goto   79
l_f2_81_if_false:
l_f2_79:
    jmp     l_f2_32                 # 124:     goto   32
l_f2_34_if_false:
l_f2_32:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $99, %eax               #   7:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_7_if_true        #  11:     goto   7_if_true
l_test_7_if_true:
    call    dummyINTfunc            #  13:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_6                #  14:     goto   6
l_test_6:
    jmp     l_test_13_if_false      #  16:     goto   13_if_false
    movl    $98, %eax               #  17:     assign v0 <- 98
    movb    %al, v0                
    movl    $26496, %eax            #  18:     assign v1 <- 26496
    movl    %eax, v1               
    jmp     l_test_11               #  19:     goto   11
l_test_13_if_false:
l_test_11:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
