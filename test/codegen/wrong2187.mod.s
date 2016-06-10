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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   4:     if     97 >= t3 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   5:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   7:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #   9:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     return t4
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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]

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
    jmp     l_f1_exit              
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   9:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  10:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
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
    jmp     l_f2_exit              
    movl    $20675, %eax            #   1:     sub    t2 <- 20675, 91833
    movl    $91833, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $69773, %eax            #   2:     if     69773 <= t2 goto 2
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t3
    movb    %al, -18(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #  12:     goto   6
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_5_if_false       #   1:     goto   5_if_false
    jmp     l_test_3                #   2:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $99, %eax               #   5:     if     99 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #   8:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  14:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_12_if_true       #  15:     goto   12_if_true
    jmp     l_test_12_if_true       #  16:     goto   12_if_true
    jmp     l_test_12_if_true       #  17:     goto   12_if_true
l_test_12_if_true:
    jmp     l_test_20               #  19:     goto   20
l_test_20:
    jmp     l_test_11               #  21:     goto   11
l_test_11:
    movl    $10939, %eax            #  23:     sub    t1 <- 10939, 37013
    movl    $37013, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     if     t1 >= 80036 goto 24_if_true
    movl    $80036, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  25:     goto   25_if_false
l_test_24_if_true:
l_test_28_while_cond:
    movl    $98, %eax               #  28:     if     98 >= 99 goto 29_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_29_while_body   
    jmp     l_test_27               #  29:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  31:     goto   28_while_cond
l_test_27:
    jmp     l_test_23               #  33:     goto   23
l_test_25_if_false:
l_test_23:
    movl    $1, %eax                #  36:     if     1 = 0 goto 32_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_32_if_true      
    jmp     l_test_33_if_false      #  37:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_38_while_cond:
    jmp     l_test_37               #  42:     goto   37
    jmp     l_test_38_while_cond    #  43:     goto   38_while_cond
l_test_37:
    movl    $100, %eax              #  45:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
l_test_43_while_cond:
    jmp     l_test_42               #  48:     goto   42
    jmp     l_test_43_while_cond    #  49:     goto   43_while_cond
l_test_42:
    jmp     l_test_31               #  51:     goto   31
l_test_33_if_false:
l_test_31:
l_test_46_while_cond:
    jmp     l_test_45               #  55:     goto   45
    call    f1                      #  56:     call   f1
    movl    $98, %eax               #  57:     if     98 >= 98 goto 50_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_50_if_true      
    jmp     l_test_51_if_false      #  58:     goto   51_if_false
l_test_50_if_true:
    jmp     l_test_49               #  60:     goto   49
l_test_51_if_false:
l_test_49:
    jmp     l_test_exit            
    jmp     l_test_46_while_cond    #  64:     goto   46_while_cond
l_test_45:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
