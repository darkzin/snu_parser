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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 73 of <array 90 of <array 99 of <array 93 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   5:     return 100
    jmp     l_f0_exit              
l_f0_5_while_cond:
    movl    $99, %eax               #   7:     if     99 <= 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #  12:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_10                 #  15:     goto   10
    jmp     l_f0_10                 #  16:     goto   10
l_f0_10:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_12                 #  19:     goto   12
    movl    $0, %eax                #  20:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_12:
    movzbl  -21(%ebp), %eax         #  22:     assign v4 <- t3
    movb    %al, -23(%ebp)         
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    movl    $1, %eax                #   1:     if     1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, -16(%ebp)         
l_f1_7_while_cond:
    movl    $97, %eax               #  11:     if     97 # 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_8_while_body      
    jmp     l_f1_6                  #  12:     goto   6
l_f1_8_while_body:
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $14552, %eax            #  22:     if     14552 > 98998 goto 17
    movl    $98998, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_17                
    jmp     l_f1_18                 #  23:     goto   18
l_f1_17:
    movl    $1, %eax                #  25:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_19                 #  26:     goto   19
l_f1_18:
    movl    $0, %eax                #  28:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f1_19:
    movzbl  -15(%ebp), %eax         #  30:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_7_while_cond       #  31:     goto   7_while_cond
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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 73 of <array 90 of <array 99 of <array 93 of <array 61 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 6 of <array 44 of <array 78 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 85 of <array 25 of <array 74 of <array 42 of <array 76 of <int>>>>>>> %ebp+16 ]
    #   -1874655724(%ebp)  1874655696  [ $v4       <array 73 of <array 90 of <array 99 of <array 93 of <array 61 of <int>>>>>> %ebp-1874655724 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1874655712, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $468663928, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1874655724(%ebp)    # local array 'v4': 5 dimensions
    movl    $73,-1874655720(%ebp)   #   dimension 1: 73 elements
    movl    $90,-1874655716(%ebp)   #   dimension 2: 90 elements
    movl    $99,-1874655712(%ebp)   #   dimension 3: 99 elements
    movl    $93,-1874655708(%ebp)   #   dimension 4: 93 elements
    movl    $61,-1874655704(%ebp)   #   dimension 5: 61 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
    movl    $24469, %eax            #   4:     return 24469
    jmp     l_f2_exit              
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $54945, %eax            #  12:     param  2 <- 54945
    pushl   %eax                   
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    leal    -1874655724(%ebp), %eax #  15:     &()    t3 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  17:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1874655712, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $99, %eax               #   2:     if     99 > 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   3:     goto   8
l_test_7:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_9                #   6:     goto   9
l_test_8:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_9:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_2                #  11:     goto   2
l_test_2:
    movl    $98, %eax               #  13:     assign v0 <- 98
    movb    %al, v0                

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
