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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   1:     goto   3
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_4                  #   3:     goto   4
l_f0_3:
    movl    $0, %eax                #   5:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_4:
    movzbl  -14(%ebp), %eax         #   7:     assign v3 <- t2
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     assign v4 <- t3
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t5       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $66184, %eax            #   0:     if     66184 <= 1962 goto 1_if_true
    movl    $1962, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    call    ReadInt                 #   7:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $94359, %eax            #   8:     if     94359 >= 863 goto 9_if_true
    movl    $863, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $93031, %eax            #  14:     if     93031 > 72211 goto 13
    movl    $72211, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_13                
    jmp     l_f1_14                 #  15:     goto   14
l_f1_13:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_15                 #  18:     goto   15
l_f1_14:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f1_15:
    movzbl  -17(%ebp), %eax         #  22:     assign v0 <- t2
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #  23:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_18_while_cond:
    call    dummyCHARfunc           #  27:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $97, %eax               #  28:     if     97 = t3 goto 19_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_19_while_body     
    jmp     l_f1_17                 #  29:     goto   17
l_f1_19_while_body:
    jmp     l_f1_21                 #  31:     goto   21
l_f1_21:
    call    dummyBOOLfunc           #  33:     call   t4 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f1_18_while_cond      #  34:     goto   18_while_cond
l_f1_17:
l_f1_26_while_cond:
    jmp     l_f1_30                 #  37:     goto   30
    jmp     l_f1_30                 #  38:     goto   30
    jmp     l_f1_30                 #  39:     goto   30
    movl    $1, %eax                #  40:     assign t5 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f1_31                 #  41:     goto   31
l_f1_30:
    movl    $0, %eax                #  43:     assign t5 <- 0
    movb    %al, -20(%ebp)         
l_f1_31:
    movl    $0, %eax                #  45:     if     0 = t5 goto 27_while_body
    movzbl  -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_27_while_body     
    jmp     l_f1_25                 #  46:     goto   25
l_f1_27_while_body:
    jmp     l_f1_38_if_false        #  48:     goto   38_if_false
    jmp     l_f1_36                 #  49:     goto   36
l_f1_38_if_false:
l_f1_36:
    call    dummyProcedure          #  52:     call   dummyProcedure
    jmp     l_f1_26_while_cond      #  53:     goto   26_while_cond
l_f1_25:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t2 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f2_4:
    movzbl  -15(%ebp), %eax         #  11:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_7                  #  12:     goto   7
l_f2_7:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_9                  #  15:     goto   9
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f2_9:
    movzbl  -16(%ebp), %eax         #  18:     return t4
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t0 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #   6:     if     99 < 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_if_true       
    jmp     l_test_8_if_false       #   7:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   9:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_10               #  12:     goto   10
l_test_10:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $97, %eax               #  19:     if     97 = 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  20:     goto   14
l_test_16_while_body:
    movl    $3469, %eax             #  22:     assign v0 <- 3469
    movl    %eax, v0               
l_test_20_while_cond:
    jmp     l_test_19               #  24:     goto   19
    jmp     l_test_20_while_cond    #  25:     goto   20_while_cond
l_test_19:
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:
    movl    $17424, %eax            #  29:     assign v0 <- 17424
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
