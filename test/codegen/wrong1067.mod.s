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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v0       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $v1       <char> %ebp-34 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $6668, %eax             #   0:     div    t2 <- 6668, 91040
    movl    $91040, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 80856
    movl    $80856, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 21945
    movl    $21945, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $91618, %eax            #   3:     if     91618 >= t4 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #  11:     assign v0 <- t5
    movb    %al, -33(%ebp)         
l_f1_6_while_cond:
    movl    $97, %eax               #  13:     if     97 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #  14:     goto   5
l_f1_7_while_body:
    movl    $98, %eax               #  16:     assign v1 <- 98
    movb    %al, -34(%ebp)         
    movl    $100, %eax              #  17:     if     100 < 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11                
    jmp     l_f1_12                 #  18:     goto   12
l_f1_11:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_13                 #  21:     goto   13
l_f1_12:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f1_13:
    movzbl  -26(%ebp), %eax         #  25:     assign v0 <- t6
    movb    %al, -33(%ebp)         
l_f1_16_while_cond:
    movl    $43456, %eax            #  27:     if     43456 = 22659 goto 17_while_body
    movl    $22659, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_17_while_body     
    jmp     l_f1_15                 #  28:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  30:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_6_while_cond       #  32:     goto   6_while_cond
l_f1_5:
    call    dummyINTfunc            #  34:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_5_while_cond:
    movl    $44804, %eax            #   3:     if     44804 > 10259 goto 6_while_body
    movl    $10259, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
l_f2_9_while_cond:
    movl    $17908, %eax            #   9:     if     17908 > 20155 goto 10_while_body
    movl    $20155, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  12:     goto   9_while_cond
l_f2_8:
    call    dummyProcedure          #  14:     call   dummyProcedure
l_f2_14_while_cond:
    movl    $60591, %eax            #  16:     if     60591 # 28292 goto 15_while_body
    movl    $28292, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_while_body     
    jmp     l_f2_13                 #  17:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  19:     goto   14_while_cond
l_f2_13:
    call    f0                      #  21:     call   f0
    jmp     l_f2_1_while_cond       #  22:     goto   1_while_cond
l_f2_0:
l_f2_19_while_cond:
    movl    $100, %eax              #  25:     if     100 # 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_20_while_body     
    jmp     l_f2_18                 #  26:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  28:     goto   19_while_cond
l_f2_18:
l_f2_23_while_cond:
    movl    $90432, %eax            #  31:     if     90432 = 84216 goto 24_while_body
    movl    $84216, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_24_while_body     
    jmp     l_f2_22                 #  32:     goto   22
l_f2_24_while_body:
l_f2_27_while_cond:
    movl    $33657, %eax            #  35:     if     33657 <= 48541 goto 28_while_body
    movl    $48541, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_28_while_body     
    jmp     l_f2_26                 #  36:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  38:     goto   27_while_cond
l_f2_26:
l_f2_31_while_cond:
    jmp     l_f2_30                 #  41:     goto   30
    jmp     l_f2_31_while_cond      #  42:     goto   31_while_cond
l_f2_30:
    jmp     l_f2_23_while_cond      #  44:     goto   23_while_cond
l_f2_22:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
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
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    leal    _str_1, %eax            #   1:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #   4:     if     100 < 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_if_true       
    jmp     l_test_4_if_false       #   5:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_exit            
    call    dummyINTfunc            #   8:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_8                #   9:     goto   8
l_test_8:
    jmp     l_test_2                #  11:     goto   2
l_test_4_if_false:
l_test_2:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
