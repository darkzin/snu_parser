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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 47 of <array 100 of <array 94 of <array 81 of <array 11 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v0 <- t3
    movb    %al, 8(%ebp)           
l_f0_7_while_cond:
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  12:     if     98 >= t4 goto 8_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #  13:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  15:     goto   7_while_cond
l_f0_6:
    call    dummyCHARfunc           #  17:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 47 of <array 100 of <array 94 of <array 81 of <array 11 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <bool> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #   -393643852(%ebp)  393643824  [ $v3       <array 47 of <array 100 of <array 94 of <array 81 of <array 11 of <char>>>>>> %ebp-393643852 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $393643840, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $98410960, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-393643852(%ebp)     # local array 'v3': 5 dimensions
    movl    $47,-393643848(%ebp)    #   dimension 1: 47 elements
    movl    $100,-393643844(%ebp)   #   dimension 2: 100 elements
    movl    $94,-393643840(%ebp)    #   dimension 3: 94 elements
    movl    $81,-393643836(%ebp)    #   dimension 4: 81 elements
    movl    $11,-393643832(%ebp)    #   dimension 5: 11 elements

    # function body
    movl    $28964, %eax            #   0:     if     28964 < 76539 goto 1
    movl    $76539, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     param  3 <- t3
    pushl   %eax                   
    movl    $56790, %eax            #   9:     param  2 <- 56790
    pushl   %eax                   
    leal    -393643852(%ebp), %eax  #  10:     &()    t4 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  1 <- t4
    pushl   %eax                   
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #  13:     if     97 <= t5 goto 5
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_5                 
    jmp     l_f2_6                  #  14:     goto   6
l_f2_5:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_7                  #  17:     goto   7
l_f2_6:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f2_7:
    movzbl  -22(%ebp), %eax         #  21:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  22:     call   t7 <- f0
    addl    $16, %esp              
    movb    %al, -23(%ebp)         
    call    dummyBOOLfunc           #  23:     call   t8 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    call    dummyBOOLfunc           #  24:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f2_exit:
    # epilogue
    addl    $393643840, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
    movl    $63980, %eax            #   7:     param  2 <- 63980
    pushl   %eax                   
    movl    $53269, %eax            #   8:     param  1 <- 53269
    pushl   %eax                   
    movl    $7884, %eax             #   9:     param  2 <- 7884
    pushl   %eax                   
    movl    $905, %eax              #  10:     add    t0 <- 905, 97415
    movl    $97415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  1 <- t0
    pushl   %eax                   
    movl    $97, %eax               #  12:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  13:     call   t1 <- f2
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  14:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  15:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    jmp     l_test_2_while_cond     #  16:     goto   2_while_cond
l_test_1:
    call    dummyProcedure          #  18:     call   dummyProcedure
    movl    $97, %eax               #  19:     assign v0 <- 97
    movb    %al, v0                

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
