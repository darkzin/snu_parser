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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f0_4                  #   0:     goto   4
l_f0_4:
    jmp     l_f0_1_if_true          #   2:     goto   1_if_true
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    leal    _str_1, %eax            #   8:     &()    t4 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
l_f0_8_while_cond:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     if     t5 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_7                  #  14:     goto   7
l_f0_10:
    jmp     l_f0_8_while_cond       #  16:     goto   8_while_cond
l_f0_7:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $52337, %eax            #   1:     if     52337 <= 61814 goto 2_while_body
    movl    $61814, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   4:     if     100 < 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    movl    $29203, %eax            #  12:     sub    t4 <- 29203, 28960
    movl    $28960, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     sub    t5 <- t4, 66356
    movl    $66356, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t6 <- t5, 73143
    movl    $73143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     assign v1 <- t6
    movl    %eax, -32(%ebp)        
    jmp     l_f1_14                 #  16:     goto   14
    jmp     l_f1_14                 #  17:     goto   14
    jmp     l_f1_14                 #  18:     goto   14
    movl    $1, %eax                #  19:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_15                 #  20:     goto   15
l_f1_14:
    movl    $0, %eax                #  22:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_15:
    movl    $1, %eax                #  24:     if     1 # t7 goto 10_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  25:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  27:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 12 of <array 20 of <array 17 of <array 64 of <bool>>>>>>> %ebp+8 ]
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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   1:     goto   5_if_false
l_f2_4_if_true:
    movl    $79943, %eax            #   3:     if     79943 # 86048 goto 8_if_true
    movl    $86048, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   4:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_3                  #   9:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  12:     goto   0
l_f2_0:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  15:     if     98 > t4 goto 12_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  16:     goto   13_if_false
l_f2_12_if_true:
    movl    $97, %eax               #  18:     if     97 >= 98 goto 16
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  19:     goto   17
l_f2_16:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_18                 #  22:     goto   18
l_f2_17:
    movl    $0, %eax                #  24:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_18:
    movzbl  -14(%ebp), %eax         #  26:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  27:     goto   11
l_f2_13_if_false:
l_f2_11:
    call    dummyBOOLfunc           #  30:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 # 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    jmp     l_test_5                #   9:     goto   5
    movl    $97, %eax               #  10:     if     97 <= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  13:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    call    ReadInt                 #  19:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  20:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
