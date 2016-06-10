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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]

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
    movl    $98, %eax               #   0:     if     98 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $36382, %eax            #   3:     if     36382 > 996 goto 5_if_true
    movl    $996, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_9_while_cond:
    movl    $41526, %eax            #  10:     if     41526 > 48079 goto 10_while_body
    movl    $48079, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_0                  #  15:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_13_while_cond:
    jmp     l_f0_12                 #  19:     goto   12
l_f0_17_while_cond:
    jmp     l_f0_16                 #  21:     goto   16
    jmp     l_f0_17_while_cond      #  22:     goto   17_while_cond
l_f0_16:
    movl    $84516, %eax            #  24:     if     84516 >= 97598 goto 20_if_true
    movl    $97598, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_20_if_true        
    jmp     l_f0_21_if_false        #  25:     goto   21_if_false
l_f0_20_if_true:
    jmp     l_f0_19                 #  27:     goto   19
l_f0_21_if_false:
l_f0_19:
    call    WriteLn                 #  30:     call   WriteLn
    movl    $0, %eax                #  31:     assign v0 <- 0
    movb    %al, -22(%ebp)         
    jmp     l_f0_13_while_cond      #  32:     goto   13_while_cond
l_f0_12:
    movl    $23617, %eax            #  34:     add    t3 <- 23617, 39782
    movl    $39782, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  35:     sub    t4 <- t3, 77045
    movl    $77045, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     if     t4 > 66029 goto 26_if_true
    movl    $66029, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  37:     goto   27_if_false
l_f0_26_if_true:
    call    dummyBOOLfunc           #  39:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $93892, %eax            #  40:     if     93892 >= 33031 goto 31_if_true
    movl    $33031, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_31_if_true        
    jmp     l_f0_32_if_false        #  41:     goto   32_if_false
l_f0_31_if_true:
    jmp     l_f0_30                 #  43:     goto   30
l_f0_32_if_false:
l_f0_30:
    jmp     l_f0_25                 #  46:     goto   25
l_f0_27_if_false:
l_f0_25:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $98, %eax               #   1:     if     98 >= t3 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     assign v1 <- t5
    movb    %al, 12(%ebp)          

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <bool> %ebp-23 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 87 of <array 53 of <array 40 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_5                  #   0:     goto   5
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_5                  #   3:     goto   5
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    jmp     l_f2_15                 #  11:     goto   15
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_16                 #  13:     goto   16
l_f2_15:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f2_16:
    movzbl  -21(%ebp), %eax         #  17:     if     t3 = t4 goto 1
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #  18:     goto   2
l_f2_1:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_3                  #  21:     goto   3
l_f2_2:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -23(%ebp)         
l_f2_3:
    movzbl  -23(%ebp), %eax         #  25:     assign v1 <- t5
    movb    %al, 12(%ebp)          
l_f2_22_while_cond:
    movl    $98308, %eax            #  27:     param  2 <- 98308
    pushl   %eax                   
    movl    $98, %eax               #  28:     param  1 <- 98
    pushl   %eax                   
    movl    $38552, %eax            #  29:     add    t6 <- 38552, 80235
    movl    $80235, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t7 <- t6, 99927
    movl    $99927, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     sub    t8 <- t7, 37584
    movl    $37584, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     sub    t9 <- t8, 62828
    movl    $62828, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $74479, %eax            #  33:     if     74479 # t9 goto 24
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_24                
    jmp     l_f2_25                 #  34:     goto   25
l_f2_24:
    movl    $1, %eax                #  36:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_26                 #  37:     goto   26
l_f2_25:
    movl    $0, %eax                #  39:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_26:
    movzbl  -13(%ebp), %eax         #  41:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  42:     call   t11 <- f1
    addl    $12, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  43:     if     t11 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_23_while_body     
    jmp     l_f2_21                 #  44:     goto   21
l_f2_23_while_body:
    jmp     l_f2_22_while_cond      #  46:     goto   22_while_cond
l_f2_21:
l_f2_29_while_cond:
    movl    $100, %eax              #  49:     if     100 > 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_30_while_body     
    jmp     l_f2_28                 #  50:     goto   28
l_f2_30_while_body:
l_f2_33_while_cond:
    movl    $100, %eax              #  53:     if     100 = 99 goto 34_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_34_while_body     
    jmp     l_f2_32                 #  54:     goto   32
l_f2_34_while_body:
    jmp     l_f2_33_while_cond      #  56:     goto   33_while_cond
l_f2_32:
    call    ReadInt                 #  58:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_29_while_cond      #  59:     goto   29_while_cond
l_f2_28:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $87189, %eax            #   6:     add    t0 <- 87189, 89492
    movl    $89492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  2 <- t0
    pushl   %eax                   
    movl    $99, %eax               #   8:     param  1 <- 99
    pushl   %eax                   
    movl    $1, %eax                #   9:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #  10:     call   t1 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     if     t1 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #  12:     goto   6_if_false
l_test_5_if_true:
    movl    $37946, %eax            #  14:     assign v0 <- 37946
    movl    %eax, v0               
    movl    $21761, %eax            #  15:     if     21761 <= 93975 goto 9_if_true
    movl    $93975, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  16:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  18:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_4                #  21:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $5132, %eax             #  24:     sub    t2 <- 5132, 54623
    movl    $54623, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
