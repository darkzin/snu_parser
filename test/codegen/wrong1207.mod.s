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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v0       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $66713, %eax            #   1:     if     66713 < t2 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, -25(%ebp)         
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #  12:     if     99 > 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_14                
    jmp     l_f0_10                 #  13:     goto   10
l_f0_14:
    jmp     l_f0_10                 #  15:     goto   10
    jmp     l_f0_10                 #  16:     goto   10
    movl    $1, %eax                #  17:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  18:     goto   11
l_f0_10:
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  22:     return t3
    jmp     l_f0_exit              
    movl    $99, %eax               #  23:     assign v0 <- 99
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #  24:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #  25:     assign v0 <- 97
    movb    %al, -25(%ebp)         
    jmp     l_f0_16                 #  26:     goto   16
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 98 of <array 57 of <array 43 of <array 84 of <int>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $58717, %eax            #   1:     add    t3 <- 58717, 98498
    movl    $98498, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t3 > 27151 goto 2
    movl    $27151, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  10:     return t4
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_6                  #  12:     goto   6
    jmp     l_f1_6                  #  13:     goto   6
    jmp     l_f1_7_while_cond       #  14:     goto   7_while_cond
l_f1_6:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 36 of <array 8 of <array 18 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_0                  #   2:     goto   0
    jmp     l_f2_0                  #   3:     goto   0
    movl    $100, %eax              #   4:     return 100
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $100, %eax              #   6:     if     100 = 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   9:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  14:     return t2
    jmp     l_f2_exit              
    call    dummyINTfunc            #  15:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $47856, %eax            #  16:     if     47856 <= 7017 goto 16_if_true
    movl    $7017, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  17:     goto   17_if_false
l_f2_16_if_true:
    movl    $742, %eax              #  19:     assign v2 <- 742
    movl    %eax, -24(%ebp)        
l_f2_21_while_cond:
    movl    $1, %eax                #  21:     if     1 = 0 goto 22_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_22_while_body     
    jmp     l_f2_20                 #  22:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  24:     goto   21_while_cond
l_f2_20:
    movl    $36713, %eax            #  26:     assign v2 <- 36713
    movl    %eax, -24(%ebp)        
    jmp     l_f2_25                 #  27:     goto   25
l_f2_25:
    movl    $98, %eax               #  29:     if     98 < 100 goto 29_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_29_if_true        
    jmp     l_f2_30_if_false        #  30:     goto   30_if_false
l_f2_29_if_true:
    jmp     l_f2_28                 #  32:     goto   28
l_f2_30_if_false:
l_f2_28:
    movl    $98, %eax               #  35:     assign v3 <- 98
    movb    %al, -25(%ebp)         
    jmp     l_f2_15                 #  36:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_11                 #  39:     goto   11
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $99262, %eax            #   1:     assign v0 <- 99262
    movl    %eax, v0               
    call    f0                      #   2:     call   t0 <- f0
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #   6:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_9                #   7:     goto   9
l_test_9:
    jmp     l_test_5                #   9:     goto   5
l_test_5:
    call    dummyBOOLfunc           #  11:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
