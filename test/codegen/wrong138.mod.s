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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 9 of <array 7 of <array 6 of <int>>>>>>> %ebp+8 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_5_while_cond:
    movl    $67771, %eax            #   3:     if     67771 >= 64458 goto 6_while_body
    movl    $64458, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_10_while_body      #  12:     goto   10_while_body
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  14:     goto   9_while_cond
    movl    $99, %eax               #  15:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 10 of <array 4 of <array 3 of <int>>>>>>> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
l_f2_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   7:     return t1
    jmp     l_f2_exit              
l_f2_6_while_cond:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  10:     if     t2 >= 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:
    call    dummyINTfunc            #  15:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     if     98 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_4                #   3:     goto   4
l_test_4:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    movl    $55906, %eax            #  10:     if     55906 # 63183 goto 12_if_true
    movl    $63183, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  13:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_17_if_false      #  16:     goto   17_if_false
    jmp     l_test_15               #  17:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_8                #  20:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  23:     assign v0 <- 99
    movb    %al, v0                
l_test_20_while_cond:
    movl    $22466, %eax            #  25:     if     22466 < 12811 goto 21_while_body
    movl    $12811, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_21_while_body   
    jmp     l_test_19               #  26:     goto   19
l_test_21_while_body:
    movl    $99, %eax               #  28:     if     99 < 98 goto 24_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  29:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  31:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_exit            
l_test_29_while_cond:
    movl    $99, %eax               #  36:     if     99 <= 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_30_while_body   
    jmp     l_test_28               #  37:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  39:     goto   29_while_cond
l_test_28:
    jmp     l_test_20_while_cond    #  41:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
