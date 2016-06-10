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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_6_while_cond:
    movl    $52557, %eax            #   5:     if     52557 > 88618 goto 7_while_body
    movl    $88618, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_13_while_cond:
    movl    $98, %eax               #  14:     if     98 # 100 goto 14_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_14_while_body     
    jmp     l_f0_12                 #  15:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
l_f0_12:
    movl    $1, %eax                #  19:     if     1 = 0 goto 17_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  20:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  22:     goto   16
l_f0_18_if_false:
l_f0_16:
l_f0_21_while_cond:
    movl    $97, %eax               #  26:     if     97 >= 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_22_while_body     
    jmp     l_f0_20                 #  27:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_exit              
    jmp     l_f0_9                  #  32:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_26_while_cond:
    jmp     l_f0_27_while_body      #  36:     goto   27_while_body
    jmp     l_f0_27_while_body      #  37:     goto   27_while_body
l_f0_27_while_body:
    movl    $99, %eax               #  39:     if     99 <= 99 goto 32
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_32                
    jmp     l_f0_33                 #  40:     goto   33
l_f0_32:
    movl    $1, %eax                #  42:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_34                 #  43:     goto   34
l_f0_33:
    movl    $0, %eax                #  45:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_34:
    movzbl  -13(%ebp), %eax         #  47:     assign v2 <- t1
    movb    %al, -14(%ebp)         
    jmp     l_f0_26_while_cond      #  48:     goto   26_while_cond

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 75 of <array 84 of <array 80 of <array 58 of <array 22 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 85 of <array 60 of <array 2 of <array 99 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 25 of <array 20 of <array 25 of <array 61 of <array 62 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
    movl    $34435, %eax            #   2:     if     34435 > 99955 goto 2
    movl    $99955, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v5 <- t2
    movb    %al, -15(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_6                  #  12:     goto   6
    movl    $100, %eax              #  13:     if     100 >= 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  14:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  16:     goto   7_while_cond
l_f1_6:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 38 of <array 94 of <array 11 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $9754, %eax             #   0:     add    t1 <- 9754, 17422
    movl    $17422, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   2:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_exit              
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $100, %eax              #   3:     if     100 > 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   4:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_exit            
    movl    $0, %eax                #   7:     assign v0 <- 0
    movb    %al, v0                
l_test_10_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_3                #  13:     goto   3
l_test_5_if_false:
l_test_3:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
