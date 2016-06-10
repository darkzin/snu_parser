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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 1 of <array 5 of <int>>>>>>> %ebp+16 ]

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
    movl    $82818, %eax            #   0:     if     82818 >= 41065 goto 4_if_true
    movl    $41065, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   1:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_if_false:
l_f0_3:
l_f0_8_while_cond:
    movl    $97, %eax               #   7:     if     97 < 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  10:     goto   8_while_cond
l_f0_7:
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_0                  #  15:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #  17:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_14_while_cond:
    movl    $32033, %eax            #  19:     sub    t6 <- 32033, 13617
    movl    $13617, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t6 = 51003 goto 15_while_body
    movl    $51003, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_15_while_body     
    jmp     l_f0_13                 #  21:     goto   13
l_f0_15_while_body:
l_f0_18_while_cond:
    movl    $62985, %eax            #  24:     if     62985 > 12585 goto 19_while_body
    movl    $12585, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_19_while_body     
    jmp     l_f0_17                 #  25:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  27:     goto   18_while_cond
l_f0_17:
    jmp     l_f0_14_while_cond      #  29:     goto   14_while_cond
l_f0_13:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 1 of <array 5 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 3 of <array 6 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 8 of <array 4 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 4 of <array 5 of <array 6 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -2748(%ebp)  2724  [ $v4       <array 3 of <array 5 of <array 9 of <array 1 of <array 5 of <int>>>>>> %ebp-2748 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2736, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $684, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2748(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-2744(%ebp)          #   dimension 1: 3 elements
    movl    $5,-2740(%ebp)          #   dimension 2: 5 elements
    movl    $9,-2736(%ebp)          #   dimension 3: 9 elements
    movl    $1,-2732(%ebp)          #   dimension 4: 1 elements
    movl    $5,-2728(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, 20(%ebp)          
    call    dummyBOOLfunc           #   1:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    -2748(%ebp), %eax       #   2:     &()    t5 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  2 <- t5
    pushl   %eax                   
    movl    $98, %eax               #   4:     param  1 <- 98
    pushl   %eax                   
    movl    $34016, %eax            #   5:     if     34016 > 36718 goto 3
    movl    $36718, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_3                 
l_f1_3:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_5                  #   8:     goto   5
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_5:
    movzbl  -21(%ebp), %eax         #  11:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  12:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $2736, %esp             # remove locals
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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_f2_6_while_cond:
    jmp     l_f2_6_while_cond       #   5:     goto   6_while_cond
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $0, %eax                #   9:     assign v0 <- 0
    movb    %al, 8(%ebp)           
l_f2_10_while_cond:
    jmp     l_f2_exit              
    movl    $83492, %eax            #  12:     if     83492 < 75276 goto 14
    movl    $75276, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_14                
    jmp     l_f2_15                 #  13:     goto   15
l_f2_14:
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  16:     goto   16
l_f2_15:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  20:     assign v0 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f2_exit              
    jmp     l_f2_10_while_cond      #  22:     goto   10_while_cond

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_exit            
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $6609, %eax             #   2:     sub    t1 <- 6609, 67744
    movl    $67744, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #   3:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t3 <- t1, t2
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
