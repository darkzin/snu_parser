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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 23 of <array 5 of <array 4 of <array 20 of <array 24 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v6       <char> %ebp+20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_3:
    movzbl  -17(%ebp), %eax         #   9:     return t5
    jmp     l_f0_exit              
    movl    $78655, %eax            #  10:     sub    t6 <- 78655, 57876
    movl    $57876, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $93169, %eax            #  11:     if     93169 >= t6 goto 8_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #  12:     goto   9_if_false
l_f0_8_if_true:
    call    WriteLn                 #  14:     call   WriteLn
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    call    ReadInt                 #  16:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $73697, %eax            #  17:     if     73697 <= 95795 goto 15_if_true
    movl    $95795, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  20:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_7                  #  23:     goto   7
l_f0_9_if_false:
l_f0_7:
l_f0_19_while_cond:
    movl    $63910, %eax            #  27:     add    t9 <- 63910, 24253
    movl    $24253, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     add    t10 <- t9, 94386
    movl    $94386, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $46381, %eax            #  29:     if     46381 < t10 goto 20_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_20_while_body     
    jmp     l_f0_18                 #  30:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  32:     goto   19_while_cond
l_f0_18:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 29 of <array 30 of <array 35 of <array 63 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 54 of <array 2 of <array 86 of <array 61 of <array 1 of <bool>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v7       <char> %ebp-22 ]

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
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 < 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   9:     call   WriteLn
    call    ReadInt                 #  10:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  12:     goto   15_while_cond
    jmp     l_f1_7                  #  13:     goto   7
l_f1_7:
l_f1_18_while_cond:
l_f1_21_while_cond:
    jmp     l_f1_21_while_cond      #  17:     goto   21_while_cond
    jmp     l_f1_exit              
l_f1_25_while_cond:
    jmp     l_f1_24                 #  20:     goto   24
    jmp     l_f1_25_while_cond      #  21:     goto   25_while_cond
l_f1_24:
    movl    $1, %eax                #  23:     assign v5 <- 1
    movb    %al, 16(%ebp)          
    movl    $97, %eax               #  24:     assign v7 <- 97
    movb    %al, -22(%ebp)         
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  26:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_18_while_cond      #  27:     goto   18_while_cond

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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 23 of <array 5 of <array 4 of <array 20 of <array 24 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <char> %ebp-22 ]
    #   -220848(%ebp)  220824  [ $v3       <array 23 of <array 5 of <array 4 of <array 20 of <array 24 of <char>>>>>> %ebp-220848 ]
    #   -220852(%ebp)   4  [ $v4       <int> %ebp-220852 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $220840, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $55210, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-220848(%ebp)        # local array 'v3': 5 dimensions
    movl    $23,-220844(%ebp)       #   dimension 1: 23 elements
    movl    $5,-220840(%ebp)        #   dimension 2: 5 elements
    movl    $4,-220836(%ebp)        #   dimension 3: 4 elements
    movl    $20,-220832(%ebp)       #   dimension 4: 20 elements
    movl    $24,-220828(%ebp)       #   dimension 5: 24 elements

    # function body
    movl    $98, %eax               #   0:     param  3 <- 98
    pushl   %eax                   
    movl    $100, %eax              #   1:     param  2 <- 100
    pushl   %eax                   
    movl    $100, %eax              #   2:     if     100 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  10:     param  1 <- t5
    pushl   %eax                   
    leal    -220848(%ebp), %eax     #  11:     &()    t6 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  13:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $50469, %eax            #  14:     assign v4 <- 50469
    movl    %eax, -220852(%ebp)    
    call    dummyCHARfunc           #  15:     call   t8 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  16:     param  0 <- t8
    pushl   %eax                   
    call    WriteChar               #  17:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $220840, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]

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
l_test_5_while_cond:
    movl    $78137, %eax            #   2:     if     78137 < 19327 goto 6_while_body
    movl    $19327, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   3:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $54597, %eax            #   8:     assign v0 <- 54597
    movl    %eax, v0               
    movl    $1, %eax                #   9:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_0                #  10:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  13:     assign v2 <- 100
    movb    %al, v2                
l_test_14_while_cond:
    movl    $81514, %eax            #  15:     if     81514 <= 24935 goto 15_while_body
    movl    $24935, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_while_body   
    jmp     l_test_13               #  16:     goto   13
l_test_15_while_body:
l_test_18_while_cond:
    movl    $97, %eax               #  19:     if     97 = 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  20:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  22:     goto   18_while_cond
l_test_17:
    movl    $1, %eax                #  24:     if     1 # 0 goto 22
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_22              
    jmp     l_test_23               #  25:     goto   23
l_test_22:
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_24               #  28:     goto   24
l_test_23:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_24:
    movzbl  -15(%ebp), %eax         #  32:     assign v1 <- t2
    movb    %al, v1                
    call    ReadInt                 #  33:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_14_while_cond    #  34:     goto   14_while_cond
l_test_13:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  37:     call   t4 <- dummyBOOLfunc
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
